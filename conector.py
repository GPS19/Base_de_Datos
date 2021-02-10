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
    
    artista_list = [{"The Beatles"           : {"Sgt. Pepper’s Lonely Heart’s Club Band" :  [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}, 
                    {"Pink Floyd"            : {"The Dark Side of the Moon"  :              [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}, 
                    {"Michael Jackson"       : {"Thriller" :                                [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},        
                    {"Led Zeppelin"          : {"Led Zeppelin IV" :                         [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}, 
                    {"U2"                    : {"The Joshua Tree" :                         [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}, 
                    {"The Rolling Stones"    : {"Exile on Main St." :                       [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}, 
                    {"Carole King"           : {"Tapestry" :                                [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"Bob Dylan"             : {"Highway 61 Revisited" :                    [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}, 
                    {"The Beach Boys"        : {"Pet Sounds" :                              [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}, 
                    {"Nirvana"               : {"Nevermind" :                               [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}, 
                    {"Pearl Jam"             : {"Ten" :                                     [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}, 
                    {"The Beatles"           : {"Abbey Road" :                              [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},     
                    {"Santana"               : {"Supernatural" :                            [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}, 
                    {"Metallica"             : {"Metallica" :                               [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},   
                    {"Bruce Springsteen"     : {"Born to Run" :                             [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"Prince"                : {"Purple Rain":                              [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"AC/DC"                 : {"Back in Black" :                           [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"The Rolling Stones"    : {"Let it Bleed":                             [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"The Doors"             : {"Doors":                                    [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"Grateful Dead"         : {"American Beauty" :                         [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"Shania Twain"          : {"Come on Over" :                            [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"The Who"               : {"Who's Next":                               [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"Stevie Wonder"         : {"Songs in the Key of Life":                 [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"Fleetwood Mac"         : {"Rumours":                                  [names.get_first_name(), names.get_first_name(),names.get_first_name()]}},
                    {"Pink Floyd"            : {"The Wall" :                               [names.get_first_name(), names.get_first_name(),names.get_first_name()]}}
                
                    ] #Ponemos todos los artistas


def main():
    try:
        # Conectamos con mysql 
        cnx = mysql.connector.connect(user='root', password='Starwars19', host='127.0.0.1', database='Ejemplo', auth_plugin='mysql_native_password')
        cursor = cnx.cursor()

        # LLenamos las tablas        
        añadirUsuarios(cnx, cursor)
        añadirAlbum(cnx, cursor)


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