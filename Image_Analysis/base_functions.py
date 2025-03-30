import numpy as np
"""
/// Generación de las imágenes a partir de los archivos .raw.
"""

def Matrix_Creator(Raw, Pixels):
    """
    Esta función genera una lista con un par de matrices que representan las dos imágenes que surgen al
    analizar el archivo .raw.
    """
    image_pair = []
    for k in range(0, len(Raw), Pixels*Pixels):
        print(len(Raw))
        blank = np.zeros((Pixels, Pixels))
        for i in range(Pixels):
            for j in range(Pixels):
                blank[i, j] = Raw[j + Pixels*i + k]
        image_pair.append(blank)
    return image_pair

def Data_Import(path, prefix, Pixels, NRaw):
    """
    Esta función se encarga de tomar la información de la ubicación de la carpeta con los archivos .raw
    y crear las matrices de números asociadas a cada una de las tomas de datos.
    
    Inputs:
        path: Directorio de la carpeta donde están los (.raw).
        prefix: General name used by each (.raw).
        Pixels: Cantidad de píxeles de la matriz del detector.
        NRaw: Cantidad de imágenes .raw a analizar.
    
    Output:
        data: Lista con los pares de matrices de intensidad de cada .raw.
    """
    data = []
    for i in range(1, NRaw + 1):
        Raw = np.fromfile(path + "{}{}.raw".format(prefix, i), dtype='float32')
        matrix = Matrix_Creator(Raw, Pixels)
        data.append(matrix)
    
    try:
        Raw = np.fromfile(path + "{}_FF.raw".format(prefix), dtype='float32')
        matrix = Matrix_Creator(Raw, Pixels)
        data.append(matrix)
    except FileNotFoundError:
        None
        
    return data

def Image_Generator(data, N_images, N_Dopple):
    """
    Esta función genera una lista con las matrices asociadas a cada imágen tomada. Se hace promediando
    las dos matrices de cada .raw para tener la intensidad media.
    
    Inputs:
        data: Lista con cada par de matrices asociado a los .raw que se analizaron.
        N_images: Cantidad de imágenes que se generarán.
        N_Dopple: Cantidad de imágenes por archivo .raw (no sabemos si varía).
    
    Output:
        images: Lista con las matrices asociadas a cada imagen analizada.
    """
    images = [] 
    for i in range(0, N_images):
        mean = (data[i][0] + data[i][1])/2
        images.append(mean)
    if len(data) > N_images:
        mean = (data[N_images][0] + data[N_images][1])/2
        images.append(mean)
    return images

"""
/// Creación de los histogramas de comparación entre píxeles pares e impares.
"""

def Intensity_Mean(image, Pixels):
    intensity = np.zeros(Pixels)
    for i in range(0, Pixels):
        intensity += image[i, 0:Pixels]
    mean = intensity/np.max(intensity)
    return mean


def Aver(name,X1,X2,Step):
    P=np.copy(name)
    for i in range(len(P)):
        P[i,X1:X2]=(1/2)*(P[i,X1-Step:X2-Step]+P[i,X1+Step:X2+Step])
    return P