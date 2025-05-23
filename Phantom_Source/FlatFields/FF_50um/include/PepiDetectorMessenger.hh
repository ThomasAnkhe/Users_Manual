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
// $Id: B2aDetectorMessenger.hh 69706 2013-05-13 09:12:40Z gcosmo $
//
/// \file B2aDetectorMessenger.hh
/// \brief Definition of the B2aDetectorMessenger class

#ifndef PepiDetectorMessenger_h
#define PepiDetectorMessenger_h 1

#include "globals.hh"
#include "G4UImessenger.hh"

class PepiDetectorConstruction;
class G4UIdirectory;
class G4UIcmdWithADoubleAndUnit;
class G4UIcmdWithAString;
class G4UIcmdWithABool;

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

class PepiDetectorMessenger: public G4UImessenger
{
  public:
    PepiDetectorMessenger(PepiDetectorConstruction*);
    virtual ~PepiDetectorMessenger();
    
    virtual void SetNewValue(G4UIcommand*, G4String);
    virtual G4String GetCurrentValue(G4UIcommand * command);
    
  private:
    PepiDetectorConstruction*     fDetectorConstruction;

    G4UIdirectory*              fPepiDirectory;
    G4UIdirectory*              fDetDirectory;

    G4UIcmdWithAString*         fObjectMaterialCmd;

    G4UIcmdWithADoubleAndUnit*  fObjectDetDistanceCmd;
    G4UIcmdWithADoubleAndUnit*  fSrcObjDistanceCmd;
    G4UIcmdWithADoubleAndUnit*  fMaskThicknessCmd;
    G4UIcmdWithADoubleAndUnit*  fM2PitchCmd;
    G4UIcmdWithADoubleAndUnit*  fM2ApertureCmd;
    G4UIcmdWithADoubleAndUnit*  fSourcePosZCmd;
    G4UIcmdWithADoubleAndUnit* 	fRotationAngleCmd;
    G4UIcmdWithADoubleAndUnit* 	fEISteppingCmd;
    G4UIcmdWithADoubleAndUnit* 	fEIDitheringCmd;

    G4UIcmdWithADoubleAndUnit*  fObjectRadiusCmd;
    //G4UIcmdWithADoubleAndUnit*  fBeamHeightCmd;
    
    G4UIcmdWithAString*         fAcquisitionTypeCmd;
    G4UIcmdWithAString*         fDetTypeCmd;
    G4UIcmdWithABool*           fSetBidimensionalCmd;
    G4UIcmdWithADoubleAndUnit* 	fThreshold1Cmd;
    G4UIcmdWithADoubleAndUnit* 	fThreshold2Cmd;
    G4UIcmdWithABool*           fCheckOverlapsCmd;
    };

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#endif
