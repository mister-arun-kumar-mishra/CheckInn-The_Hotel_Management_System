from pathlib import Path

from tkinter import Frame, Canvas, Entry, Text, Button, PhotoImage, messagebox
from controller import *

OUTPUT_PATH = Path(__file__).parent
ASSETS_PATH = OUTPUT_PATH / Path("./assets")


def relative_to_assets(path: str) -> Path:
    return ASSETS_PATH / Path(path)


def about():
    About()


class About(Frame):
    def __init__(self, parent, controller=None, *args, **kwargs):
        Frame.__init__(self, parent, *args, **kwargs)
        self.parent = parent

        self.configure(bg="#FFFFFF")

        self.canvas = Canvas(
            self,
            bg="#FFFFFF",
            height=432,
            width=797,
            bd=0,
            highlightthickness=0,
            relief="ridge",
        )

        self.canvas.place(x=0, y=0)
        self.canvas.create_text(
            36.0,
            43.0,
            anchor="nw",
            text="CheckInn was created by",
            fill="#28a745",
            font=("Montserrat Bold", 26 * -1),
        )

        self.image_image_1 = PhotoImage(file=relative_to_assets("about_image_1.png"))
        image_1 = self.canvas.create_image(191.0, 26.0, image=self.image_image_1)

        self.image_image_2 = PhotoImage(file=relative_to_assets("about_image_2.png"))
        image_2 = self.canvas.create_image(350.0, 205.0, image=self.image_image_2)

        self.image_image_3 = PhotoImage(file=relative_to_assets("about_image_3.png"))
        image_3 = self.canvas.create_image(425.0, 205.0, image=self.image_image_3)


        self.canvas.create_text(
            200.0,
            138.0,
            anchor="nw",
            text="Arun Kumar Mishra",
            fill="#28a745",
            font=("Montserrat Bold", 26 * -1),
        )

        self.image_image_4 = PhotoImage(file=relative_to_assets("about.png"))
        image_4 = self.canvas.create_image(520.0, 150.0, image=self.image_image_4)

        self.canvas.create_rectangle(
            56.0, 197.0, 169.0, 199.0, fill="#FFFFFF", outline=""
        )

        self.canvas.create_rectangle(
            418.0, 197.0, 531.0, 199.0, fill="#FFFFFF", outline=""
        )

        self.canvas.create_text(
            200.0,
            207.0,
            anchor="nw",
            text="Final year student at Indian Institute of Technology",
            fill="#777777",
            font=("Montserrat Medium", 15 * -1),
        )

        self.canvas.create_text(
            200.0,
            227.0,
            anchor="nw",
            text="(Indian School of Mines) Dhanbad.",
            fill="#777777",
            font=("Montserrat Medium", 15 * -1),
        )

        self.canvas.create_text(
            200.0,
            247.0,
            anchor="nw",
            text="Machine Learning enthusiastic and developer.",
            fill="#777777",
            font=("Montserrat Medium", 15 * -1),
        )

        self.canvas.create_text(
            197.0,
            352.0,
            anchor="nw",
            text="© 2023 Arun Kumar Mishra, All rights reserved",
            fill="#28a745",
            font=("Montserrat Bold", 16 * -1),
        )       