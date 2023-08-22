import tkinter as tk
from login import loginWindow
from main_window import mainWindow

# Main window constructor
root = tk.Tk()  # Make temporary window for app to start
root.withdraw()  # WithDraw the window


if __name__ == "__main__":

    loginWindow()
    # mainWindow()

    root.mainloop()
