# -*- coding: utf-8 -*-
"""
Created on Sun Feb 16 15:17:42 2025

@author: isabe
"""

import numpy as np
import sys


# Cargar los datos desde los archivos TXT
try:
    toma1 = np.loadtxt("Toma4.txt")  # Cargar la primera imagen
    tomaFF = np.loadtxt("TomaFF.txt")  # Cargar la imagen de fondo o referencia
except Exception as e:
    print(f"Error al cargar los archivos: {e}")
    sys.exit()


# Verificar que ambas matrices tengan las mismas dimensiones
if toma1.shape != tomaFF.shape:
    print("Error: Las dimensiones de Toma1.txt y TomaFF.txt no coinciden.")
    sys.exit()


# Realizar la división evitando división por cero
raw1 = np.divide(toma1, tomaFF, out=np.zeros_like(toma1), where=tomaFF != 0)

# Guardar el resultado en un nuevo archivo de texto
np.savetxt("Raw4.txt", raw1, fmt="%.6f")  # Guarda con 6 decimales de precisión

