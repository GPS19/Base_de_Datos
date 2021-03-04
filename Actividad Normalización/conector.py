#coding = utf-8

import mysql.connector
import datetime
import random 


def fecha_Aleatoria():
    start_date = datetime.date(2019, 1, 1)
    end_date = datetime.date(2021, 1, 1)
    time_between_dates = end_date - start_date
    days_between_dates = time_between_dates.days
    random_number_of_days = random.randrange(days_between_dates)
    random_date = start_date + datetime.timedelta(days=random_number_of_days)
    horas_minutos_segundos = str(random.randrange(0,23)) + ":" + str(random.randrange(1,59)) + ":" + str(random.randrange(1,59))
    random_date = str(random_date) + " " + horas_minutos_segundos
    return random_date

def llenarViajes(cnx, cursor):

    lista_placas = ["AYN45D", "BFJA87JA", "NCBJDS292", "PYZ1982"]
    for i in range(1, 101, 1):
        id_conductor = random.randrange(1, 5)
        id_pasajero = random.randrange(1,5)
        fecha_hora = fecha_Aleatoria()
        placa = lista_placas[random.randrange(0, 4)]
        query_data = (id_conductor, id_pasajero, placa, fecha_hora)
        query = (f"INSERT INTO viajes (id_conductor, id_pasajero, placa, fecha_hora) values (%s,%s,%s,%s);")
        cursor.execute(query, query_data)
        cnx.commit()


def llenarCobros(cnx, cursor): 
    for i in range(1, 101, 1):
        id_viaje = random.randrange(1, 101)
        id_direccion_origen = random.randrange(1, 9)
        id_direccion_destino = random.randrange(1, 9)
        cantidad = (1+abs(id_direccion_origen%4 - id_direccion_destino%4)*40.5)
        query_data = (id_viaje, id_direccion_origen, id_direccion_destino, cantidad)
        query = (f"INSERT INTO cobros (id_viaje, id_direccion_origen, id_direccion_destino, cantidad) values (%s,%s,%s,%s);")
        cursor.execute(query, query_data)
        cnx.commit()

def main():
    try:
        # Conectamos con mysql 
        print("Entramos en el Try")
        cnx = mysql.connector.connect(user='root', password='Starwars19', host='127.0.0.1', database='Taxis', auth_plugin='mysql_native_password')
        print("Nos conectamos")
        cursor = cnx.cursor()
        llenarViajes(cnx, cursor)
        llenarCobros(cnx, cursor)

    except mysql.connector.Error as err:
        if err.errno == mysql.connector.errorcode.ER_ACCESS_DENIED_ERROR:
            print("Something is wrong with your user name or password")
        elif err.errno == mysql.connector.errorcode.ER_BAD_DB_ERROR:
            print("Database does not exist")
        else:
            print(err)
    
    finally:
        print("Entro al finally")
        cnx.close()



main()
