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
/// \file PepiEventAction.hh
/// \brief Definition of the PepiEventAction class

#ifndef PepiEventAction_h
#define PepiEventAction_h 1

#include "G4UserEventAction.hh"
#include "globals.hh"
#include <vector>

class G4Event;
class PepiDetectorConstruction;

/// Event action class
///
/// In EndOfEventAction() there is collected information event per event 
/// from Hits Collections, and accumulated statistic for 
/// PepiRunAction::EndOfRunAction().

class PepiEventAction : public G4UserEventAction
{
  public:
    PepiEventAction(PepiDetectorConstruction*);
    virtual ~PepiEventAction();

    virtual void  BeginOfEventAction(const G4Event*);
    virtual void  EndOfEventAction(const G4Event*);  

    void SumDose(G4double dose) {fObjDose += dose;};
    void SumMGDose(G4double dose) {fObjMGDose += dose;};

    void ResetDose() {fObjDose = 0; fObjMGDose = 0;}; 
    G4double GetObjDose(G4String);

    void SetDoseLimit(G4double dose) {fDoseLimit = dose;};
    void SetCurrentLimit(G4double current) {fCurrentLimit = current;};
    void SetAvgPixLimit(G4double avgPix) {fDetCountsLimit = avgPix;};
    void SetAvgPixWindow(G4double window) {fWindow = window;};

    G4double GetDoseLimit() const {return fDoseLimit;};
    G4double GetCurrentLimit() const {return fCurrentLimit;};
    G4double GetAvgPixLimit() const {return fDetCountsLimit;};
    G4int    GetAvgPixWindow() const {return fWindow;};

    std::vector<G4double>* GetKinEnergyVector() const {return fKinEnergyVector;};

  private:    
    G4double fObjDose;
    G4double fObjMGDose;

  	G4double fDoseLimit;
    G4double fCurrentLimit;
    G4double fDetCountsLimit;
    G4int    fWindow;

    std::vector<G4double>* fKinEnergyVector;

    PepiDetectorConstruction* fDetector;
};

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#endif