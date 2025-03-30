import os
import numpy as np

def matrix_creator(raw, pixels):
    image_set = []
    for k in range(0, len(raw), int(pixels*pixels)):
        blank = np.zeros((pixels, pixels))
        for i in range(pixels):
            for j in range(pixels):
                blank[i, j] = raw[j + pixels*i + k]
        image_set.append(blank)
    return image_set

def import_raw_preimages(path_raw, prefix, pixels, n_raws):
    raw_preimages = []
    path_raw = os.path.normpath(path_raw)
    for i in range(1, n_raws + 1):
        file_path = os.path.join(path_raw, f"{prefix}{i}.raw")
        raw = np.fromfile(file_path, dtype="float32")
        im_raw = matrix_creator(raw, pixels)
        raw_preimages.append(im_raw)

    try:
        file_path_ff = os.path.join(path_raw, f"{prefix}_FF.raw")
        raw = np.fromfile(file_path_ff, dtype="float32")
        im_raw = matrix_creator(raw, pixels)
        raw_preimages.append(im_raw)
    except FileNotFoundError:
        print("No se ha proveído información de un Flat Field.")
        pass
    return raw_preimages

def raw_image_generator(raw_preimages, n_raws):
    raw_images = [] 
    for i in range(0, n_raws):
        mean = 0
        for j in range(0, len(raw_preimages[i])):
            mean += raw_preimages[i][j]/len(raw_preimages[i])
        raw_images.append(mean)
    if len(raw_preimages) > n_raws:
        mean = 0
        for j in range(0, len(raw_preimages[i])):
            mean += raw_preimages[i][j]/len(raw_preimages[i])
        raw_images.append(mean)
    return raw_images

def save_txt_images(path_raw, path_txt, prefix, pixels, n_raws):
    path_txt = os.path.normpath(path_txt)
    raw_preimages = import_raw_preimages(path_raw, prefix, pixels, n_raws)
    raw_images = raw_image_generator(raw_preimages, n_raws)
    for i, img in enumerate(raw_images, start=1):
        file_path = os.path.join(path_txt, f"{prefix}{i}.txt")
        np.savetxt(file_path, img)
        if i > n_raws:
            file_path_ff = os.path.join(path_txt, f"{prefix}_FF.txt")
            np.savetxt(file_path_ff, img)

def load_txt_images(path_txt, prefix, n_raws):
    txt_images = []
    for i in range(1, n_raws + 1):
        file_path = os.path.join(path_txt, f"{prefix}{i}.txt")
        image = np.genfromtxt(file_path)
        txt_images.append(image)
    try:
        file_path_ff = os.path.join(path_txt, f"{prefix}_FF.txt")
        image = np.genfromtxt(file_path_ff)
        txt_images.append(image)
    except FileNotFoundError:
        print("No se ha proveído información de un Flat Field.")
        pass
    return txt_images
