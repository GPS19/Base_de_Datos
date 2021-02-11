#coding = utf-8

import mysql.connector
import datetime
from random import randint
import names 


def añadirUsuarios(cnx, cursor):
    print("---------------------- Usuarios ----------------------")
    print(" ")
    mundo = ["Mexico", "España", "USA", "Francia", "Alemania", "Inglaterra", "Italia", "Pakistán", "Emiratos Arabes", "China", "India", "Portugal", "Rusia"]
    email_list = ["@hotmail.com", "@yahoo.com.mx", "@outlook.com", "@prodigy.net.mx"] 
    for i in range(0, 10, 1):
        random_number = randint(0, len(mundo)-1)
        random_number_email = randint(0, len(email_list)-1)
        country = mundo[random_number] 
        name = names.get_first_name()
        email = name + str(random_number) + email_list[random_number_email]
        query_data = (name, country, email,)
        query = (f"INSERT INTO Users (name, country, email) values (%s,%s,%s);")
        print(f"Name: {name} \t\t Country: {country} \t\t Email: {email}")
        cursor.execute(query, query_data)
        cnx.commit()
    print(" ")

def añadirArtista(cnx, cursor):
    artista_list = ["The Beatles", "Pink Floyd", "Michael Jackson", "Led Zeppelin", "U2", "The Rolling Stones", "Carole King", "Bob Dylan", "The Beach Boys", "Nirvana", "Pearl Jam", "Santana", "Metallica", "Bruce Springsten", "Prince", "AC/DC", "The Doors", "Grateful Dead", "Shania Twain", "The Who", "Stevie Wonder", "Fleetwood Mac"]

    for artist in artista_list:
        monthly_listeners = randint(10000, 38050959)
        query_data = (artist, monthly_listeners,)
        query = (f"INSERT INTO Artist (name, monthly_listeners) values (%s,%s);")
        print(f"Name: {artist} \t\t monthly_listeners: {monthly_listeners}")
        cursor.execute(query, query_data)
        cnx.commit()
    print(" ")

def añadirAlbum(cnx, cursor):
    """ 
    title
    year
    number_of_songs
    total_duration
    genre
    
    """
    print("---------------------- Album ----------------------")
    print(" ")
    
    album_list = {"Sgt. Pepper’s Lonely Heart’s Club Band" : 1, "The Dark Side of the Moon" : 2, "Thriller" : 3, "Led Zeppelin IV" : 4, "The Joshua Tree" : 5, "Exile on Main St." : 6, "Tapestry" : 7, "Highway 61 Revisited" : 8, "Pet Sounds" : 9, "Nevermind" : 10, "Ten" : 11, "Abbey Road" : 1, "Supernatural" : 12, "Metallica" : 13, "Born to Run" : 14, "Purple Rain": 15, "Back in Black" : 16, "Let it Bleed": 6,"Doors": 17,"American Beauty" : 18,"Come on Over" : 19,"Who's Next" : 20,"Songs in the Key of Life" : 21,"Rumours" : 22,"The Wall" : 2} #Ponemos todos los artistas
    genres = ['terror', 'clasicos', 'ciencia ficción', 'fantasía', 'comedia', 'misterio', 'drama', 'comics', 'romance', 'documental']
    
    for album, artistID in album_list.items():
        year = randint(1960, 2021)
        number_of_songs = 10
        total_duration = 1200
        genre = randint(0, len(genres))
        query_data = (album, year, number_of_songs, total_duration, genre, artistID)
        query = (f"INSERT INTO Album (title, year, number_of_songs, total_duration, genre, id_artist) values (%s,%s,%s,%s,%s,%s);")
        print("Datos del album:")
        cursor.execute(query, query_data)
        cnx.commit()
    print()

def añadirCanciones(cnx, cursor):
    for i in range(250):
        title = names.get_first_name()
        duration = 120
        albumID = i%25+1
        query_data = (title, duration, albumID,)
        query = (f"INSERT INTO Songs (title, duration, id_album) values (%s,%s,%s);")
        print("Datos de las canciones:")
        cursor.execute(query, query_data)
        cnx.commit()
    print()

def followingArtists(cnx, cursor):
    for i in range(50):
        user = randint(1, 10)
        artist = randint(1, 22)
        query_data = (user, artist)
        query = (f"INSERT INTO follow_artist (id_user, id_artist) values (%s,%s);")
        cursor.execute(query, query_data)
        cnx.commit()
    print()

def followingAlbum(cnx, cursor):
    for i in range(50):
        user = randint(1, 10)
        album = randint(1, 25)
        query_data = (user, album)
        query = (f"INSERT INTO follow_album (id_user, id_album) values (%s,%s);")
        cursor.execute(query, query_data)
        cnx.commit()
    print()


def main():
    try:
        # Conectamos con mysql 
        cnx = mysql.connector.connect(user='root', password='kokoloco', host='127.0.0.1', database='Ejemplo', auth_plugin='mysql_native_password')
        cursor = cnx.cursor()

        # LLenamos las tablas        
        #añadirUsuarios(cnx, cursor)
        #añadirArtista(cnx, cursor)
        #añadirAlbum(cnx, cursor)
        #añadirCanciones(cnx, cursor)
        followingAlbum(cnx, cursor)
        followingArtists(cnx, cursor)


    except mysql.connector.Error as err:
        if err.errno == mysql.connector.errorcode.ER_ACCESS_DENIED_ERROR:
            print("Something is wrong with your user name or password")
        elif err.errno == mysql.connector.errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)
    
    finally:
        cnx.close()



main()