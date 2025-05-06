//
// ********************************************************************
// * License and Disclaimer                                           *
// *                                                                  *
// * The  Geant4 software  is  copyright of the Copyright Holders  of *
// * the Geant4 Collaboration.  It is provided  under  the terms  and *
// * conditions of the Geant4 Software License,  included in the file *
// * LICENSE and available at  http://cern.ch/geant4/license .  These *
// * include a list of copyright holders.                             *
// *                                                                  *
// * Neither the authors of this software system, nor their employing *
// * institutes,nor the agencies providing financial support for this *
// * work  make  any representation or  warranty, express or implied, *
// * regarding  this  software system or assume any liability for its *
// * use.  Please see the license in the file  LICENSE  and URL above *
// * for the full disclaimer and the limitation of liability.         *
// *                                                                  *
// * This  code  implementation is the result of  the  scientific and *
// * technical work of the GEANT4 collaboration.                      *
// * By using,  copying,  modifying or  distributing the software (or *
// * any work based  on the software)  you  agree  to acknowledge its *
// * use  in  resulting  scientific  publications,  and indicate your *
// * acceptance of all terms of the Geant4 Software license.          *
// ********************************************************************
//
// $Id$
//
/// \file PepiEventAction.cc
/// \brief Implementation of the PepiEventAction class

#include "PepiEventAction.hh"
#include "PepiDetectorConstruction.hh"
#include "PepiRun.hh"

#include "G4Event.hh"
#include "G4EventManager.hh"
#include "G4TrajectoryContainer.hh"
#include "G4Trajectory.hh"

#include "G4RunManager.hh"

#include "G4SDManager.hh"
#include "G4HCofThisEvent.hh"
#include "G4THitsMap.hh"
#include "G4UnitsTable.hh"
#include "G4SystemOfUnits.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

PepiEventAction::PepiEventAction(PepiDetectorConstruction* Det)
: G4UserEventAction(),
  fDoseLimit(-1),
  fCurrentLimit(-1),
  fDetCountsLimit(-1),
  fWindow(100),
  fDetector(Det)
{ 
  // - Add a few Dose Units
  const G4double milliGray = 1.E-3  * gray;
  const G4double microGray = 1.E-6  * gray;
  const G4double nanoGray  = 1.E-9  * gray;  
  const G4double picoGray  = 1.E-12 * gray;
   
  new G4UnitDefinition("milligray", "mGy", "Dose", milliGray);
  new G4UnitDefinition("microgray", "uGy", "Dose", microGray);
  new G4UnitDefinition("nanogray" , "nGy", "Dose", nanoGray);
  new G4UnitDefinition("picogray" , "pGy", "Dose", picoGray);

  fObjDose = 0;
  fObjMGDose = 0;

  fKinEnergyVector = new std::vector<G4double>();
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

PepiEventAction::~PepiEventAction()
{ }

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void PepiEventAction::BeginOfEventAction(const G4Event* /*evt*/)
{
  fKinEnergyVector->clear();
  fKinEnergyVector->push_back(0);
  //fKinEnergyVector->push_back(0);
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void PepiEventAction::EndOfEventAction(const G4Event* evt)
{
  fKinEnergyVector->clear();
  G4int eventID = evt->GetEventID();

  // - Get Hit Collections of this Run
  PepiRun* pepiRun = (PepiRun*)(G4RunManager::GetRunManager()->GetCurrentRun());
  std::vector<G4THitsMap<G4double>*> runMaps = pepiRun->GetHCofThisRun();

  G4double* current = 0;
  G4double avgDetCounts = 0;

  G4int nMaps = runMaps.size();
  // - Loop over HitMaps to get the quantities of interest
  for (G4int i = 0; i < nMaps; i++)
  {
    G4THitsMap<G4double>* runMap = runMaps[i];
    if (runMap)
    {
      // - Only average the flat field pixel counts a few times...
      if (runMap->GetName() == "TotalSurfCurrent" && eventID%1000000 == 0)
      {
        G4int Nx;
        G4int Ny;
        fDetector->GetNumberOfPixelsInDetector(Nx,Ny);
        G4int pixel = 0;
        G4int nAvg = 0;
        // - Loop over the detHits to compute the average value
        // of the flat field
        for (G4int iy = Ny/2-fWindow; iy<Ny/2+fWindow; iy++)
        {
          for (G4int ix = Nx/2-fWindow; ix<Nx/2+fWindow; ix++)
          {
            G4double* nCounts = (*runMap)[pixel] ? (*runMap)[pixel] : new G4double(0);
              avgDetCounts += *nCounts;
              nAvg++;
              pixel++;
	  }

	}            
        /*for (G4int iy = 0; iy < Ny; iy++)
        
        {
          for (G4int ix = 0; ix < Nx; ix++)
          {
            G4double* nCounts = (*runMap)[pixel] ? (*runMap)[pixel] : new G4double(0);

            if (ix > fWindow-Nx/2 && ix < fWindow+Nx/2)
            {
              avgDetCounts += *nCounts;
              nAvg++;
            }
            pixel++;
          }
        }*/
        avgDetCounts /= nAvg;
	//G4cout << avgDetCounts << G4endl;
      }
      else if (runMap->GetName() == "CurrentIoC")
      {
        current = (*runMap)[0] ? (*runMap)[0] : new G4double(0);
      }
    }
  }
  //  - End the RUN if certain conditions are MET, namely:
  //  ----> if the absorbed dose is greater than a threshold
  //  ----> if the mean glandular dose is greater than a threshold
  //  ----> if the photon current per unit area (mm2) is greater than a threshold
  //  ----> if the average of the flat field pixel counts is greater than a threshold 
/*  if ((fDoseLimit      > 0 && fObjDose     >= fDoseLimit)        || 
      (fDoseLimit      > 0 && fObjMGDose   >= fDoseLimit)        ||
      (fCurrentLimit   > 0 && *current     >= fCurrentLimit)     ||
      (fDetCountsLimit > 0 && avgDetCounts >= fDetCountsLimit))

  if ((fDetCountsLimit > 0 && avgDetCounts >= fDetCountsLimit)   ||
      (fCurrentLimit   > 0 && *current     >= fCurrentLimit)) 
  {
    G4RunManager::GetRunManager()->AbortRun(true);
  }
*/
  if (eventID != 0 && eventID%1000000 == 0) G4cout << "\t>>> Event " << eventID << " --- Current (photons/mm2): "<<*current
						  << " --- Average counts number: " <<avgDetCounts << G4endl;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
/*
G4double PepiEventAction::GetObjDose(G4String type)
{
  if (type == "Dose")
  {
    return fObjDose;
  }
  else if (type == "MGD")
  {
    return fObjMGDose;
  }
  else return -1;
}
*/
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
