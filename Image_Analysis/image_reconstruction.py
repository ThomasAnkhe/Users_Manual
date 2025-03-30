import numpy as np
from scipy.ndimage import zoom

def reconstruct_images(odd_maps, even_maps, absor_maps, phase_maps, pixels, n_raws):
    # Definir matrices de almacenamiento
    Odd_Dith = np.zeros((pixels, int(n_raws * pixels / 2)))
    Even_Dith = np.zeros((pixels, int(n_raws * pixels / 2)))
    Absor_Dith = np.zeros((pixels, int(n_raws * pixels / 2)))
    Phase_Dith = np.zeros((pixels, int(n_raws * pixels / 2)))

    # Rellenar las matrices con los datos de cada paso de dithering
    for i in range(n_raws):
        for j in range(int(pixels / 2)):
            Odd_Dith[:, n_raws * j + i : n_raws * j + i + 1] = odd_maps[n_raws - 1 - i][:, j:j + 1]
            Even_Dith[:, n_raws * j + i : n_raws * j + i + 1] = even_maps[n_raws - 1 - i][:, j:j + 1]
            Absor_Dith[:, n_raws * j + i : n_raws * j + i + 1] = absor_maps[n_raws - 1 - i][:, j:j + 1]
            Phase_Dith[:, n_raws * j + i : n_raws * j + i + 1] = phase_maps[n_raws - 1 - i][:, j:j + 1]

    # Ajuste del tamaño si es necesario
    scale_factor = Odd_Dith.shape[1] / Odd_Dith.shape[0]
    Odd = zoom(Odd_Dith, (scale_factor, 1))
    Even = zoom(Even_Dith, (scale_factor, 1))
    Absor = zoom(Absor_Dith, (scale_factor, 1))
    Phase = zoom(Phase_Dith, (scale_factor, 1))

    # Normalización de la imagen total
    Total = (Even + Odd) / np.max(Even + Odd)

    return {
        "Odd": Odd,
        "Even": Even,
        "Absorption": Absor,
        "Phase": Phase,
        "Total": Total
    }
