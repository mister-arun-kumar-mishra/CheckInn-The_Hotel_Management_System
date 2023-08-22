# CheckInn-The_Hotel_Management_System
![preview](https://raw.githubusercontent.com/mister-arun-kumar-mishra/CheckInn-The_Hotel_Management_System/main/media/preview.gif)

Welcome to CheckInn, your all-in-one solution for efficient hotel management.
With CheckInn, managing your hotel's operations has never been easier.
From guest reservations to room management, the CheckInn system simplifies and streamlines every aspect of your hotel's operations.

## Tech Stack

The following technologies were involved in the making of this project.

-   [Python 3](https://python.org/)  - For running the main application code
-   [Tkinter](https://docs.python.org/3/library/tk.html/) & [TTk](https://docs.python.org/3/library/tkinter.ttk.html) - For the user Interface
-   [MySQL Server](https://www.mysql.com/)  - For handling database and queries
-   [MySQL Connector Python](https://dev.mysql.com/doc/connector-python/en/) - For querying MySQL through python
-   [Tkinter Designer](https://github.com/ParthJadhav/Tkinter-Designer)  - For exporting the Figma user interface to Python code
-   [Numpy](https://numpy.org/) - As a dependency for Matplotlib
-   [Matplotlib](https://matplotlib.org/)  - For creating and showing graphs and visualizations
-   [Python Dotenv](https://github.com/theskumar/python-dotenv) - For loading environment variables from the [`.env` file](https://zetcode.com/javascript/dotenv/)

<p align="right">(<a href="#top">back to top</a>)</p>

# How to run the CheckInn
### 1: Create the virtual environment
```sh
python -m venv myenv
```
or by
```sh
py -m venv myenv
```
### 2: Activate your environment
```sh
myenv\Scripts\activate
```
### 3: Install the PIP packages/dependencies
```sh
pip install -r requirements.txt
```
### 4: Setup the database

Run the checkinn.sql script from MySQL workbench or Use the command to do it automatically (from cmd)

```sh
mysql -u your_mysql_username -p your_mysql_password -e "source 'checkinn.sql'"
```
Replace the `your_mysql_username` and `your_mysql_password` with the your credentials <br>
This will create and set up the database. <br>
###### Note: If you are running checkinn.sql the first time, comment out line no. 68

### 5: Add database credentials to the app
Replace `YOUR_MYSQL_PASSWORD` and `YOUR_MYSQL_USERNAME` in the `.env` file with your credentials

### 6: Installing Fonts
In order to make the app's gui look good, you will have to install the Montserrat font. From the `assets` folder, install all three fonts (with `.ttf` format) by double clicking them.

### 7: It's done 🎉 | Run the app
Run the `checkInn.py` file with Python, and you should see the login window if you have followed each step correctly.
```sh
python checkInn.py
```

The default username and password are `username` and `password`, respectively.

#### Adding new users

To add new login credentials, you will have to create new users by directly adding records to the database in the `login` table. Run the command to insert new login credentials:

```sql
INSERT INTO login (username, password) values ("login_username_you_wants", "give_password_for_login");
```

<p align="right">(<a href="#top">back to top</a>)</p>

## Motivation
<p> HotinGo Created by <a href="https://github.com/Just-Moh-it">Mohit Yadav</a></p>

