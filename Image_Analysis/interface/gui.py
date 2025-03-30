import tkinter as tk
from tkinter import filedialog, messagebox
import matplotlib.pyplot as plt
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg
import numpy as np
import data_loader
import image_processing
import image_reconstruction

class ImageAnalysisApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Image Analysis - EI-XPCI")
        self.root.configure(bg="#2E2E2E")  # Fondo oscuro

        # Marco de opciones
        self.frame = tk.Frame(root, bg="#2E2E2E")
        self.frame.pack(side=tk.LEFT, padx=10, pady=10)

        # Estilo de los textos y botones
        label_style = {"bg": "#2E2E2E", "fg": "#FFFFFF"}
        entry_style = {"bg": "#444444", "fg": "#FFFFFF", "insertbackground": "#FFFFFF"}
        button_style = {"bg": "#555555", "fg": "#FFFFFF", "activebackground": "#777777"}

        # Entradas para parámetros
        tk.Label(self.frame, text="Carpeta RAW:", **label_style).grid(row=0, column=0)
        self.entry_path_raw = tk.Entry(self.frame, width=30, **entry_style)
        self.entry_path_raw.grid(row=0, column=1)
        tk.Button(self.frame, text="Seleccionar", command=self.select_path_raw, **button_style).grid(row=0, column=2)

        tk.Label(self.frame, text="Prefijo:", **label_style).grid(row=1, column=0)
        self.entry_prefix = tk.Entry(self.frame, width=30, **entry_style)
        self.entry_prefix.insert(0, "D")
        self.entry_prefix.grid(row=1, column=1)

        tk.Label(self.frame, text="Tamaño de píxeles:", **label_style).grid(row=2, column=0)
        self.entry_pixels = tk.Entry(self.frame, width=30, **entry_style)
        self.entry_pixels.insert(0, "256")
        self.entry_pixels.grid(row=2, column=1)

        tk.Label(self.frame, text="Número de imágenes:", **label_style).grid(row=3, column=0)
        self.entry_n_raws = tk.Entry(self.frame, width=30, **entry_style)
        self.entry_n_raws.insert(0, "4")
        self.entry_n_raws.grid(row=3, column=1)

        tk.Label(self.frame, text="Carpeta TXT:", **label_style).grid(row=4, column=0)
        self.entry_path_txt = tk.Entry(self.frame, width=30, **entry_style)
        self.entry_path_txt.grid(row=4, column=1)
        tk.Button(self.frame, text="Seleccionar", command=self.select_path_txt, **button_style).grid(row=4, column=2)

        # Botón para procesar imágenes
        self.btn_process = tk.Button(self.frame, text="Procesar Imágenes", command=self.process_images, **button_style)
        self.btn_process.grid(row=5, column=0, columnspan=3, pady=10)

        # Dropdown para seleccionar el tipo de mapa
        self.map_options = ["Impares", "Pares", "Absorción", "Fase", "Total"]

        self.selected_map = tk.StringVar(value=self.map_options[0])
        tk.Label(self.frame, text="Seleccionar Mapa:", **label_style).grid(row=6, column=0)
        self.dropdown = tk.OptionMenu(self.frame, self.selected_map, *self.map_options)
        self.dropdown.grid(row=6, column=1)
        self.dropdown.config(bg="#444444", fg="#FFFFFF")

        # Dropdown para seleccionar el colormap
        self.cmap_options = ["gray", "viridis", "plasma", "inferno", "magma", "cividis"]
        self.selected_cmap = tk.StringVar(value=self.cmap_options[0])
        tk.Label(self.frame, text="Seleccionar Colormap:", **label_style).grid(row=7, column=0)
        self.cmap_dropdown = tk.OptionMenu(self.frame, self.selected_cmap, *self.cmap_options)
        self.cmap_dropdown.grid(row=7, column=1)
        self.cmap_dropdown.config(bg="#444444", fg="#FFFFFF")

        # Botones para mostrar y guardar imágenes
        self.btn_show = tk.Button(self.frame, text="Mostrar Imagen", command=self.show_image, **button_style)
        self.btn_show.grid(row=8, column=0, columnspan=3, pady=5)

        self.btn_intensity = tk.Button(self.frame, text="Curva Intensidad", command=self.show_intensity_curve, **button_style)
        self.btn_intensity.grid(row=9, column=0, columnspan=3, pady=5)

        self.btn_save = tk.Button(self.frame, text="Guardar Imagen", command=self.save_image, **button_style)
        self.btn_save.grid(row=10, column=0, columnspan=3, pady=5)

        # Espacio para la imagen
        self.figure, self.ax = plt.subplots(figsize=(5, 5))
        self.canvas = FigureCanvasTkAgg(self.figure, master=root)
        self.canvas.get_tk_widget().pack(side=tk.RIGHT, fill=tk.BOTH, expand=True)

        self.pixel_maps = None  # Variable para los mapas procesados
        self.reconstructed_maps = None  # Mapas reconstruidos
        self.pixels = None  # Tamaño de las imágenes

    def select_path_raw(self):
        self.entry_path_raw.delete(0, tk.END)
        self.entry_path_raw.insert(0, filedialog.askdirectory(title="Selecciona la carpeta con los archivos .raw"))

    def select_path_txt(self):
        self.entry_path_txt.delete(0, tk.END)
        self.entry_path_txt.insert(0, filedialog.askdirectory(title="Selecciona la carpeta donde se guardarán los archivos .txt"))

    def process_images(self):
        path_raw = self.entry_path_raw.get()
        prefix = self.entry_prefix.get()
        pixels = int(self.entry_pixels.get())
        n_raws = int(self.entry_n_raws.get())
        path_txt = self.entry_path_txt.get()

        if not all([path_raw, prefix, pixels, n_raws, path_txt]):
            messagebox.showwarning("Advertencia", "Todos los parámetros deben ser ingresados correctamente.")
            return

        try:
            data_loader.save_txt_images(path_raw, path_txt, prefix, pixels, n_raws)
            txt_images = data_loader.load_txt_images(path_txt, prefix, n_raws)
            self.pixel_maps = image_processing.separate_pixel_maps(txt_images, n_raws)
            self.pixels = txt_images[0].shape[0]
            self.reconstructed_maps = image_reconstruction.reconstruct_images(
                self.pixel_maps[0], self.pixel_maps[1], self.pixel_maps[2], self.pixel_maps[3], pixels, n_raws
            )
            messagebox.showinfo("Éxito", "Imágenes procesadas y reconstruidas correctamente.")
        except Exception as e:
            messagebox.showerror("Error", f"No se pudieron procesar las imágenes: {e}")

    def show_image(self):
        if self.reconstructed_maps is None:
            messagebox.showwarning("Advertencia", "Primero carga y reconstruye imágenes.")
            return
        
        map_translation = {
            "Impares": "Odd",
            "Pares": "Even",
            "Absorción": "Absorption",
            "Fase": "Phase",
            "Total": "Total"
        }

        map_type = self.selected_map.get()
        image_map = self.reconstructed_maps.get(map_translation.get(map_type, ""), None)
        
        if image_map is not None:
            self.ax.clear()
            cmap_selected = self.selected_cmap.get()
            self.ax.imshow(image_map, cmap=cmap_selected)
            self.ax.set_title(f"Mapa: {map_type}")
            self.canvas.draw()
        else:
            messagebox.showwarning("Advertencia", "Mapa seleccionado no disponible.")
    
    def show_intensity_curve(self):
        if self.reconstructed_maps is None:
            messagebox.showwarning("Advertencia", "Primero carga y reconstruye imágenes.")
            return
        
        intensity_values = np.mean(self.reconstructed_maps["Total"], axis=0)
        
        fig, ax = plt.subplots()
        ax.plot(intensity_values)
        ax.set_title("Curva de Intensidad")
        ax.set_xlabel("Píxeles")
        ax.set_ylabel("Intensidad")
        plt.show()
    
    def save_image(self):
        file_path = filedialog.asksaveasfilename(defaultextension=".png", filetypes=[("PNG files", "*.png")])
        if file_path:
            self.figure.savefig(file_path)
            messagebox.showinfo("Éxito", "Imagen guardada correctamente.")

if __name__ == "__main__":
    root = tk.Tk()
    app = ImageAnalysisApp(root)
    root.mainloop()
