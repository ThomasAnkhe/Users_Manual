import numpy as np

def separate_pixel_maps(txt_images, n_raws):
    odd_maps = []
    even_maps = []
    absor_maps = []
    phase_maps = []

    for i in range(0, n_raws):
        if txt_images[i].shape[1] % 2 != 0:
            raise ValueError(f"La imagen {i} tiene un número impar de columnas, lo que podría causar errores en la separación.")
    
        odd = txt_images[i][:,1::2]
        even = txt_images[i][:,::2]
        absor = (odd + even) / 2
        p_num = odd - even
        d_num = odd + even
        phase = np.divide(p_num, d_num, out=np.ones_like(p_num), where=d_num != 0)

        odd_maps.append(odd)
        even_maps.append(even)
        absor_maps.append(absor)
        phase_maps.append(phase)
    
    return odd_maps, even_maps, absor_maps, phase_maps

def compute_intensity_map(image, pixels):
    intensity = np.zeros(pixels)
    for i in range(0, pixels):
        intensity += image[i, 0:pixels]
    max_intensity = np.max(intensity)
    if max_intensity == 0:
        max_intensity = 1
    mean = intensity/max_intensity
    return mean
