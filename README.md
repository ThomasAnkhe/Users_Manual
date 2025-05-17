# User's Manual — Phase Contrast Imaging with Geant4:

This repository provides documentation and resources to facilitate the use of **Geant4** in the context of the **PEPI** (Photon-counting Edge-illumination Phase-contrast Imaging) project implementation. It is mainly intended for users and researchers working with **edge-illumination X-ray phase-contrast imaging (EI-XPCI)**, but any other modality of phase contrast can be achieved in this general code.

## 📖 About:

Inside this repository, you will find a comprehensive **User’s Manual**, designed to help understand the theoretical background and practical implementation of the EI technique in PEPI.

The manual was initially written by **David López** and **Isabela Ávila** (2024), and later expanded and revised by **Thomas Andrade** and **Juan José Guzmán** (2025) with new information focused in the Edge-Illumination by a single mask method.

All content is freely available and may be updated as new information or improved implementations become available.

## 📚 References:

- Brombal, L., et al. _"X-ray differential phase-contrast imaging simulations with Geant4."_ **Journal of Physics D: Applied Physics** 55.4 (2021): 045102.  
- Brombal, L., et al. _"A Geant4 tool for edge-illumination X-ray phase-contrast imaging."_ **Journal of Instrumentation** 17.01 (2022): C01043.

## 🛠️ How to Use:

**1.** Clone the repository:
   ```bash
   git clone https://github.com/yourusername/your-repo.git
   ```
**2.** Read the Users_Manual.pdf available and try to follow the explanations using either the Phantom or the Tube source.

## 🚧 Work in Progress:
We plan to include a section where users can learn how to implement **multithreading** in their simulations, in order to reduce the computational load of individual runs and improve overall performance.

Additionally, the integration of more robust and accurate phase retrieval algorithms is being considered for future updates of both the manual and the source code.
