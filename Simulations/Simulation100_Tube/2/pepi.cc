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
// $Id: pepi.cc 94031 2015-11-05 11:54:38Z ihrivnac $
//
/// \file pepi.cc
/// \brief Main program of the Pepi example

//#ifdef G4MULTITHREADED
//#include "G4MTRunManager.hh"
//#else
#include "G4RunManager.hh"
//#endif

#include "G4UImanager.hh"
#include "G4UIterminal.hh"
#include "G4UItcsh.hh"

#include "Randomize.hh"

#include "PepiDetectorConstruction.hh"
#include "PepiPhysicsList.hh"
#include "PepiActionInitialization.hh"
#include "PepiController.hh"

//#ifdef G4UI_USE
  #include "G4UIExecutive.hh"
//#endif

//#ifdef G4VIS_USE
  #include "G4VisExecutive.hh"
//#endif

#include <sys/time.h>
#include <stdio.h>

// Modify to score data as Primitive Scorers
#include "G4ScoringManager.hh"

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

int main(int argc,char** argv)
{
  // - Choose the Random engine
  G4Random::setTheEngine(new CLHEP::RanluxEngine);

  // - Seed for TEST purposes. Do not use for production runs...
  // const G4long seed = 123456789;
  // CLHEP::HepRandom::setTheSeed(seed, 3);

  // - Construct the Default Run Manager
  //#ifdef G4MULTITHREADED
  //  G4MTRunManager* runManager = new G4MTRunManager;
  //#else
    G4RunManager* runManager = new G4RunManager;
  //#endif 

  // - Mandatory Initialization Classes
  PepiDetectorConstruction* detector = new PepiDetectorConstruction;

  runManager->SetUserInitialization(detector);

  PepiPhysicsList* physList = new PepiPhysicsList;
  runManager->SetUserInitialization(physList);
  
  // Activate UI-command base scorer
  // => Step PDD-3A
  G4ScoringManager * scoringManager = G4ScoringManager::GetScoringManager();
  scoringManager->SetVerboseLevel(1);
    
  // - Initialize visualization
  //#ifdef G4VIS_USE
    // - Visualization, if you choose to have it!
    G4VisManager* visManager = new G4VisExecutive;
    visManager->Initialize();
  //#endif

  // G4VisExecutive can take a verbosity argument - see /vis/verbose guidance.
  // G4VisManager* visManager = new G4VisExecutive("Quiet");

  // - User Initialization Classes
  runManager->SetUserInitialization(new PepiActionInitialization(detector));  
  PepiController* controller = new PepiController(detector);
  
  // - Get the pointer to the User Interface manager
  G4UImanager* pUImanager = G4UImanager::GetUIpointer();

  if(argc == 1)
  {
    //#ifdef G4UI_USE
       G4UIExecutive* ui = new G4UIExecutive(argc, argv);
    //#ifdef G4VIS_USE
       pUImanager->ApplyCommand("/control/execute init_vis.mac");    
    //#endif
       ui->SessionStart();
       delete ui;
    //#endif
  }
  else
  {
    G4String command = "/control/execute ";
    G4String fileName = argv[1];
    pUImanager->ApplyCommand(command+fileName);
  }
    
   //G4cout << G4endl << "The SEED was -= " << seed << G4endl << G4endl;
  
  // - JOB TERMINATION
  // Free the store: user actions, physics_list and detector_description are
  // owned and deleted by the run manager, so they should not be deleted 
  // in the main() program !

  //#ifdef G4VIS_USE
    delete visManager;
  //#endif
  delete runManager;
  delete controller;

  return 0;
}

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......
