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
/// \file electromagnetic/TestEm12/src/PhysicsListMessenger.cc
/// \brief Implementation of the PhysicsListMessenger class
//
// $Id: PhysicsListMessenger.cc 82461 2014-06-23 10:44:06Z gcosmo $
//
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#include "PepiPhysicsListMessenger.hh"

#include "PepiPhysicsList.hh"
#include "G4UIdirectory.hh"
#include "G4UIcmdWithADoubleAndUnit.hh"
#include "G4UIcmdWithAString.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

PepiPhysicsListMessenger::PepiPhysicsListMessenger(PepiPhysicsList* Phys)
: G4UImessenger(),
  fPhysicsList(Phys),
  fPepiDirectory(0),
  fPhysDirectory(0),
  fAddPhysicsCmd(0)
{
  fPepiDirectory = new G4UIdirectory("/Pepi/");
  fPepiDirectory->SetGuidance("UI commands specific to this example.");

  fPhysDirectory = new G4UIdirectory("/Pepi/phys/");
  fPhysDirectory->SetGuidance("Physics list commands");
  
  fAddPhysicsCmd = new G4UIcmdWithAString("/Pepi/phys/addPhysics",this);  
  fAddPhysicsCmd->SetGuidance("Add modula physics list.");
  fAddPhysicsCmd->SetParameterName("PList",false);
  fAddPhysicsCmd->AvailableForStates(G4State_PreInit);
  fAddPhysicsCmd->SetToBeBroadcasted(false);        
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

PepiPhysicsListMessenger::~PepiPhysicsListMessenger()
{
  delete fPepiDirectory;
  delete fPhysDirectory;  
  delete fAddPhysicsCmd;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

void PepiPhysicsListMessenger::SetNewValue(G4UIcommand* command, G4String newValue)
{       
  if(command == fAddPhysicsCmd)
  {
    fPhysicsList->AddPhysicsList(newValue);
  }
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......