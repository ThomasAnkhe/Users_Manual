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
// $Id: PepiDetectorConstruction.hh 71079 2013-06-10 20:37:11Z ihrivnac $
//
/// \file PepiDetectorConstruction.hh
/// \brief Definition of the PepiDetectorConstruction class

#ifndef PepiDetectorConstruction_h
#define PepiDetectorConstruction_h 1

#include "G4VUserDetectorConstruction.hh"
#include "G4Material.hh"
#include "G4ThreeVector.hh"
#include "globals.hh"
#include <tuple>

class G4Box;
class G4Tubs;
class G4Sphere;
class G4Trd;
class G4LogicalVolume;
class G4VPhysicalVolume;
class PepiDetectorMessenger;

/// Detector construction class to define materials and geometry.
///
/// Crystals are positioned in Ring, with an appropriate rotation matrix. 
/// Several copies of Ring are placed in the full detector.

class PepiDetectorConstruction : public G4VUserDetectorConstruction
{
  public:
    PepiDetectorConstruction();
    virtual ~PepiDetectorConstruction();

  public:
    virtual G4VPhysicalVolume* Construct();
    void ConstructSDandField();

  public:
    // Public Set Methods
    void SetObjectDetDistance(G4double);
    //new for PEPI
    void SetSrcObjDistance(G4double);
    void SetSourcePosZ(G4double);
    void SetMaskThickness(G4double);
    void SetM2Pitch(G4double);
    void SetM2Aperture(G4double);
    //---------------------------------
    void SetBidimensionalAcquisition(G4bool);
    void SetEIMovements(G4double, G4double, G4double);
    // void SetObjectRadius(G4double size) {fObjSizeR = size;};
    //void SetBeamHeight(G4double height) {fBeamSizeY = height;};
    void SetThreshold(G4double, G4double);
    

    void SetObjectMaterial(G4String materialChoice);

    //new for PEPI
    void SetAcquisitionType(G4String);
    void SetDetType(G4String);
    void SetCheckOverlaps(G4bool);
    std::vector<double> LoadDelta(G4String);
    std::tuple<G4LogicalVolume*,G4VPhysicalVolume*> CreateMask(G4String, G4double, G4double, G4double, G4ThreeVector, G4double, G4Material*, G4LogicalVolume*, G4VPhysicalVolume*);
    void Move(G4String, G4LogicalVolume*, G4VPhysicalVolume*, G4ThreeVector,G4LogicalVolume*);
    std::tuple<G4LogicalVolume*,G4VPhysicalVolume*> CreateSubstrate(G4String, G4double, G4ThreeVector, G4double, G4Material*, G4LogicalVolume*, G4VPhysicalVolume*);
    // Public Get Methods
    void GetNumberOfPixelsInDetector(G4int& nx, G4int& ny) const {nx = fnPixelsX; ny = fnPixelsY;};
    void GetDetectorTransverseSize(G4double& detSizeX, G4double& detSizeY) const 
      {detSizeX = fPixiRadSizeX; detSizeY = fPixiRadSizeY;};
    void GetObjectSize(G4double& objSizeXZ, G4double& objSizeY) const 
      {objSizeXZ = fObjSizeR; objSizeY = fObjSizeY;};
    
    
    G4LogicalVolume* GetScoringVolume() const { return fScoringVolume; }

    
    G4double GetBeamSizeY() const {return fBeamSizeY;};
    // new for PEPI
    G4double GetM2Aperture() const {return fM2Aperture;};
    G4double GetM2Pitch() const {return fM2Pitch;};
    G4double GetSourcePosZ() const {return fSourcePosZ;};
    G4double GetSourceSize() const {return fSourceSize;};

    G4double GetTrans() const {return fTrans;};
    G4double GetDith() const {return fDith;};
    G4double GetAng() const {return fRotAngle;};
        
    // -------------------------

    G4double GetOffset() const {return fOffset;};
    G4double GetSrcObjDistance() const {return fSrcObjDistance;};
    G4double GetObjectDetDistance() const {return fObjectDetDistance;};
    G4bool GetBidimensionalAcquisition() const {return fBidimensional;};
    G4double GetObjectRotation() const {return fRotAngle;}
    G4double GetObjectTranslation() const {return fTrans;}
    G4double GetObjectDithering() const {return fDith;}
    G4double GetMaskThickness() const {return fMaskThickness;}
    G4double GetThreshold1() const {return fThreshold1;}
    G4double GetThreshold2() const {return fThreshold2;}

    G4String GetObjectMaterial() const {return fObjectMaterial->GetName();};
    //G4String GetDetailMaterial() const {return fDetailMaterial->GetName();};

    //G4double GetIrradiatedGlandularMass();
    //G4double GetGlandularMass(G4String);
    
    G4bool GetCheckOverlaps() const {return fCheckOverlaps;};

    G4String GetDetType() const {return fDetType;};
    G4String GetAcquisitionType() const {return fAcquisitionType;};
        
  private:
    // Private Methods
    void DefineMaterials();
    void DefineVolumes();
    void DefineDetectors();

    // Private Data Members
    G4bool  fConstructed;
    G4bool  fConstructedSDandField;
    G4bool  fBidimensional;

    G4Material* fWorldMaterial;
    G4Material* fIonCMaterial;
    G4Material* fDetectorMaterial;
    G4Material* fMaskMaterial;
    G4Material* fObjectMaterial;
    G4Material* fObject2Material;
    G4Material* fObject3Material;
    G4Material* fSubMaterial;
    G4Material* fSphereMaterial;
    G4Material* fMuscleMaterial;

    // MODIFIED START
    G4Material* fMicroSphereMaterial;
    G4Material* fWaxInsertMaterial;
    G4Material* fMuscleMaterial1;
    // MODIFIED FINISH

    G4Box*  fWorldSolid;
    G4Box*  fIonCSolid;
    G4Box*  fPixiRadSolid;
    G4Box*  fPixelSolid;
    G4Box*  fPixelSolid2;
    G4Box*  fM2subSolid;
    G4Box*  fM1subSolid;
    G4Box*  fM2Solid;
    G4Box*  fM1Solid;
    G4Box*  fEnvelopeM2Solid;
    G4Box*  fEnvelopeM1Solid;
    G4Trd*  fObjectSolid;
    G4Trd*  fObject2Solid;
    G4Trd*  fObject3Solid;
    G4Sphere* fSphereSolid;
    G4Sphere* fSphereSolid2;
    G4Tubs* fSphere2Solid;
    G4Box* fSandSolid;
    G4Box* fSandSolid2;
    G4Box* fSand2Solid;
    G4Box* fSand3Solid;
    G4Box* fMuscleSolid;
    G4Tubs* fSphere3Solid;
    G4Tubs* fSphere5Solid;

    // MODIFIED START
    G4Sphere* fMicroSphereSolid;
    G4Sphere* fMicroSphereSolid1;
    G4Sphere* fMicroSphereSolid2;
    G4Sphere* fMicroSphereSolid3;

    G4Box* fMuscleSolid1;
    G4Box* fWaxInsertSolid;
    // MODIFIED FINISH

    G4LogicalVolume* fWorldLogical;
    G4LogicalVolume* fIonCLogical;
    G4LogicalVolume* fPixiRadLogical;
    G4LogicalVolume* fPixelLogical;
    G4LogicalVolume* fPixelLogical2;
    G4LogicalVolume* fM2Logical;
    G4LogicalVolume* fM1Logical;
    G4LogicalVolume* fM1subLogical;
    G4LogicalVolume* fM2subLogical;
    G4LogicalVolume* fEnvelopeM2Logical;
    G4LogicalVolume* fEnvelopeM1Logical;
    G4LogicalVolume* fObjectLogical;
    G4LogicalVolume* fObject2Logical;
    G4LogicalVolume* fObject3Logical;
    G4LogicalVolume* fSphereLogical;
    G4LogicalVolume* fSphereLogical2;
    G4LogicalVolume* fSphere2Logical;
    G4LogicalVolume* fSandLogical;
    G4LogicalVolume* fSandLogical2;
    G4LogicalVolume* fSand2Logical;
    G4LogicalVolume* fSand3Logical;
    G4LogicalVolume* fMuscleLogical;
    G4LogicalVolume* fSphere3Logical;
    G4LogicalVolume* fSphere5Logical;

    // MODIFIED START
    G4LogicalVolume* fMicroSphereLogical;
    G4LogicalVolume* fMicroSphereLogical1;
    G4LogicalVolume* fMicroSphereLogical2;
    G4LogicalVolume* fMicroSphereLogical3;

    G4LogicalVolume* fMuscleLogical1;
    G4LogicalVolume* fWaxInsertLogical;
    // MODIFIED FINISH

    G4LogicalVolume*  fScoringVolume;

    G4VPhysicalVolume* fWorldPhysical;
    G4VPhysicalVolume* fIonCPhysical;
    G4VPhysicalVolume* fPixiRadPhysical;
    G4VPhysicalVolume* fPixelPhysical;
    G4VPhysicalVolume* fPixelPhysical2;
    G4VPhysicalVolume* fM2Physical;
    G4VPhysicalVolume* fM1Physical;
    G4VPhysicalVolume* fM1subPhysical;    
    G4VPhysicalVolume* fM2subPhysical;
    G4VPhysicalVolume* fEnvelopeM2Physical;
    G4VPhysicalVolume* fEnvelopeM1Physical;
    G4VPhysicalVolume* fObjectPhysical;
    G4VPhysicalVolume* fObject2Physical;
    G4VPhysicalVolume* fObject3Physical;
    G4VPhysicalVolume* fSpherePhysical;
    G4VPhysicalVolume* fSpherePhysical2;
    G4VPhysicalVolume* fSphere2Physical;
    G4VPhysicalVolume* fSandPhysical;
    G4VPhysicalVolume* fSandPhysical2;
    G4VPhysicalVolume* fSand2Physical;
    G4VPhysicalVolume* fSand3Physical;
    G4VPhysicalVolume* fMusclePhysical;
    G4VPhysicalVolume* fSphere3Physical;
    G4VPhysicalVolume* fSphere5Physical;

    // MODIFIED START
    G4VPhysicalVolume* fMicroSpherePhysical;
    G4VPhysicalVolume* fMicroSpherePhysical1;
    G4VPhysicalVolume* fMicroSpherePhysical2;
    G4VPhysicalVolume* fMicroSpherePhysical3;

    G4VPhysicalVolume* fMusclePhysical1;
    G4VPhysicalVolume* fWaxInsertPhysical;
    // MODIFIED FINISH

    G4double fRotAngle;
    G4double fTrans;
    G4double fDith;
    G4double fObjectDetDistance;
    G4double fSrcObjDistance;

    G4double fObjSizeR;
    G4double fObjSizeY;

    G4double fSkinThickness;
    G4double fDetailSizeR;

    G4double fWorldSizeX;
    G4double fWorldSizeY;
    G4double fWorldSizeZ;

    G4double fOffset;

    G4double fPixelSizeX;
    G4double fPixelSizeY;
    G4double fPixelSizeZ;

    G4double fPixelSize2X;
    G4double fPixelSize2Y;
    G4double fPixelSize2Z;
    
    G4double fPixelSize3X;
    G4double fPixelSize3Y;
    G4double fPixelSize3Z;
    
    G4double fMuscleSizeX;
    G4double fMuscleSizeY;
    G4double fMuscleSizeZ;


    G4double fBeamSizeY;
    G4double fSourceSize;

    G4int fnPixelsX;
    G4int fnPixelsY;


    G4double fPixiRadSizeX;
    
    G4double fPixiRadSizeY;
    G4double fPixiRadSizeZ;
    
    G4double fPixiRadSize2X;
    
    G4double fPixiRadSize2Y;
    G4double fPixiRadSize2Z;
    
    G4double fPixiRadSize3Z; 
    
    G4double fPixiRadSize4Z;
    
    G4double fPixiRadSize3Y;

    G4double fMaskThickness;
    G4double fM2Aperture;
    G4double fM2Pitch;

    G4double fSubThickness;    
    
    G4double fSourcePosZ;
    
    G4double fThreshold1;
    G4double fThreshold2;

    G4String  fAcquisitionType;
        G4String   fDetType;
    G4bool  fCheckOverlaps;
    
    PepiDetectorMessenger*  fMessenger;   // messenger
};

//....oooOO0OOooo........oooOO0OOooo........oooOO0OOooo........oooOO0OOooo......

#endif
