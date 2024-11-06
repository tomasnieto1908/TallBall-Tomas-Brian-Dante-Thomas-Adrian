from flask import Flask, request, jsonify

from flask import Flask, jsonify

import mysql.connector

app = Flask(__name__)

# Función para conectar a la base de datos MySQL
def conectar_bd():
    return mysql.connector.connect(
        host="10.9.120.5",       # Cambia esto por tu host MySQL
        user="tallball",      # Cambia por tu usuario de MySQL
        password="tallball111",  # Cambia por tu contraseña de MySQL
        database="tallball"  # Cambia por el nombre de tu base de datos
    )

# Ruta que acepta solicitudes POST
@app.route('/equipo', methods=['GET'])
def obtener_datos():
    try:
        # Obtener el JSON enviado en la solicitud
        data = request.get_json()

        # Obtener la consulta desde el JSON, por defecto hace un SELECT * de la tabla especificada
        consulta = data.get("consulta", "SELECT * FROM equipo")

        # Conectar a la base de datos
        conexion = conectar_bd()
        cursor = conexion.cursor()

        # Ejecutar la consulta
        cursor.execute(consulta)
        resultados = cursor.fetchall()

        # Convertir los resultados en una lista para devolver en formato JSON
        datos = [list(fila) for fila in resultados]

        # Cerrar la conexión a la base de datos
        cursor.close()
        conexion.close()

        # Devolver los resultados como un JSON
        return jsonify({"equipo": datos}), 200

    except mysql.connector.Error as err:
        # Manejo de errores en la conexión o consulta SQL
        return jsonify({"error": str(err)}), 400
    except Exception as e:
        # Manejo de otros errores
        return jsonify({"error": str(e)}), 500


@app.route('/partido', methods=['GET'])
def obtener_partidos():
    conexion = conectar_bd()
    cursor = conexion.cursor(dictionary=True)
    
    # Consulta para obtener los jugadores y el nombre del equipo según el ID de equipo
    consulta = """
SELECT 
    p.ID, 
    el.ID AS ID_Local, 
    el.Nombre_Equipo AS Equipo_Local, 
    el.logo_url AS Logo_Local,
    ev.ID AS ID_Visitante, 
    ev.Nombre_Equipo AS Equipo_Visitante,
    ev.logo_url AS Logo_Visitante,
    p.Goles_Local,
    p.Goles_Visitante,
    p.tiempo
FROM 
    partidos p
JOIN 
    equipo el ON p.ID = el.ID
JOIN 
    equipo ev ON p.ID = ev.ID;


    """
    cursor.execute(consulta)
    resultados = cursor.fetchall()
    obtener_partidos = [
        {"time": str(fila['tiempo']), 
         "local_team": {"Nombre_Equipo": fila['Equipo_Local'], "logo": fila['Logo_Local']},
         "visitor_team": {"Nombre_Equipo": fila['Equipo_Visitante'], "logo": fila['Logo_Visitante']},
         "Goles_Local": fila["Goles_Local"],"Goles_Visitante": fila["Goles_Visitante"],              
        }
        for fila in resultados
    ]
    cursor.close()
    conexion.close()
    
    return jsonify(obtener_partidos)

@app.route('/jugadores', methods=['GET'])
def obtener_jugadores_con_equipo():
    conexion = conectar_bd()
    cursor = conexion.cursor()
    
    # Consulta para obtener los jugadores y el nombre del equipo según el ID de equipo
    consulta = """
    SELECT jugadores.Nombre_Jugador, equipo.Nombre_Equipo
    FROM jugadores
    JOIN equipo ON jugadores.ID_Equipo = equipo.ID
    """
    cursor.execute(consulta)
    resultados = cursor.fetchall()
    
    # Convertir los resultados a una lista de diccionarios
    detalle_jugadores = [
        {"Nombre_Jugador": fila[0], "Nombre_Equipo": fila[1]} 
        for fila in resultados
    ]

    cursor.close()
    conexion.close()
    
    return jsonify(detalle_jugadores)

@app.route('/equipo', methods=['POST',])
def agregarEquipo():
    nombre = request.json["Nombre_Equipo"]
    apodo = request.json["Apodo_Equipo"]
    cancha = request.json["Estadio_Equipo"]

    db = conectar_bd()
    cursor = db.cursor()
    consulta = """ INSERT INTO `equipo` (`Nombre_Equipo`, `Apodo_Equipo`, `Estadio_Equipo`) VALUES (%s,%s,%s)  """

    cursor.execute(consulta, (nombre,apodo,cancha,))
    db.commit()
    db.close()
    return {"nombre" : nombre, "apodo" : apodo,"cancha" : cancha}    



@app.route('/equipo/<int:id>', methods=["DELETE"])
def borrarEquipo(id):


    db = conectar_bd()
    cursor = db.cursor()
    consulta = """ DELETE FROM equipo WHERE ID =   %s  """

    cursor.execute(consulta, (id,))
    db.commit()
    db.close()
    return {"id borrado": id}   


app.route('/competiciones', methods=['POST',])
def agregarCompetencia():
   nombre = request.json["Nombre"]

   db = conectar_bd()
   cursor = db.cursor()
   consulta = """ INSERT INTO competiciones (Nombre) VALUES  (%s) """


   cursor.execute(consulta,(nombre,))
   db.commit()
   db.close()
   return{"nombre":nombre}



@app.route('/jugadores', methods=['POST',])
def agregarjugador():
  nombre = request.json["Nombre_Jugador"]
  IDequipo = request.json["ID_Equipo"]
  db = conectar_bd()
  cursor = db.cursor()
  consulta = """ INSERT INTO `jugadores` (`Nombre_Jugador`, `ID_Equipo`) VALUES(%s,%s)  """

  cursor.execute(consulta, (nombre,IDequipo))
  db.commit()
  db.close()
  return {"nombre" : nombre, "IDequipo" : IDequipo} 

@app.route('/competiciones/<int:id>', methods=["DELETE"])
def borrarCompeticiones(id):

  db = conectar_bd()
  cursor = db.cursor()
  consulta = """ DELETE FROM competiciones WHERE ID =   %s  """

  cursor.execute(consulta, (id,))
  db.commit()
  db.close()  
  return {"id borrado": id}


@app.route('/jugadores/<int:id>', methods=["DELETE"])
def borrarjugadores(id):

  db = conectar_bd()
  cursor = db.cursor()
  consulta = """ DELETE FROM jugadores WHERE ID =   %s  """

  cursor.execute(consulta, (id,))
  db.commit()
  db.close()  
  return {"id borrado": id}


if __name__ == '__main__':
    app.run(debug=True)


