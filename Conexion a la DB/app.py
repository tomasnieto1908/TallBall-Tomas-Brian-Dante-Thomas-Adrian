from flask import Flask, request, jsonify
from flask_cors import CORS  # Importa CORS
from flask import Flask, jsonify

import mysql.connector

app = Flask(__name__)
CORS(app)  


# Función para conectar a la base de datos MySQL
def conectar_bd():
    return mysql.connector.connect(
        host="10.9.120.5",       # Cambia esto por tu host MySQL
        user="tallball",      # Cambia por tu usuario de MySQL
        password="tallball111",  # Cambia por tu contraseña de MySQL
        database="tallball"  # Cambia por el nombre de tu base de datos
    )


@app.route("/partidos", methods=["POST"])
def agregarPartido():
    EquipoLocal = request.json["Local"]
    EquipoVistante = request.json["Visitante"]
    Fecha =  request.json["Fecha"]
    id_competicion =  request.json["ID_Competicion"]
    Goles_local =  request.json["Goles_Local"]
    Goles_visitante =  request.json["Goles_Visitante"]
    tiempo =  request.json["tiempo"]

    db = conectar_bd()
    cursor = db.cursor()
    consulta = """ INSERT INTO `partidos` (`Local`, `Visitante`, `Fecha`,`ID_Competicion`, `Goles_Local`, `Goles_Visitante`, `tiempo`) VALUES (%s,%s,%s,%s,%s,%s,%s)  """

    cursor.execute(consulta, (EquipoLocal,EquipoVistante,Fecha,id_competicion
                              ,Goles_local,Goles_visitante,tiempo))
    id = cursor.lastrowid
    db.commit()
    db.close()
    return {"result" : "OK",
            "id_creado": id}



@app.route('/partidos/<int:id>', methods=["DELETE"])
def borrarPartidos(id):

  db = conectar_bd()
  cursor = db.cursor()
  consulta = """ DELETE FROM partidos WHERE ID =   %s  """

  cursor.execute(consulta, (id,))
  db.commit()
  db.close()  
  return {"result" : "OK",
          "id borrado": id}


@app.route("/partidos/<int:id>", methods=["PUT"])
def modificarPartido(id):
    EquipoLocal = request.json["Local"]
    EquipoVistante = request.json["Visitante"]
    Fecha =  request.json["Fecha"]
    id_competicion =  request.json["ID_Competicion"]
    Goles_local =  request.json["Goles_Local"]
    Goles_visitante =  request.json["Goles_Visitante"]
    tiempo =  request.json["tiempo"]

    db = conectar_bd()
    cursor = db.cursor()
    consulta = """  UPDATE `partidos` SET `Local`= %s, `Visitante`= %s, `Fecha`= %s,`ID_Competicion`= %s,
                    `Goles_Local`= %s, `Goles_Visitante`= %s, `tiempo`= %s
                    WHERE ID =   %s """

    cursor.execute(consulta, (EquipoLocal,EquipoVistante,Fecha,id_competicion
                              ,Goles_local,Goles_visitante,tiempo,id))
    db.commit()
    db.close()
    return {"result" : "OK",
            "id_mod": id}




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
    if "torneo" in request.args:
        consulta = """
    SELECT p.ID, 
    el.ID AS ID_Local, el.Nombre_Equipo AS Equipo_Local, el.logo_url AS Logo_Local, 
    ev.ID AS ID_Visitante, 
    ev.Nombre_Equipo AS Equipo_Visitante,
    ev.logo_url AS Logo_Visitante, p.Goles_Local, p.Goles_Visitante,p.tiempo
    FROM partidos p INNER JOIN equipo el ON el.ID = p.Local 
    INNER JOIN equipo ev ON ev.ID = p.Visitante 
    WHERE p.ID_competicion = %s
    LIMIT 0, 25;
"""
        cursor.execute(consulta, (request.args['torneo'],))
    else:
        consulta = """
    SELECT p.ID, 
    el.ID AS ID_Local, el.Nombre_Equipo AS Equipo_Local, el.logo_url AS Logo_Local, 
    ev.ID AS ID_Visitante, 
    ev.Nombre_Equipo AS Equipo_Visitante,
    ev.logo_url AS Logo_Visitante, p.Goles_Local, p.Goles_Visitante,p.tiempo
    FROM partidos p INNER JOIN equipo el ON el.ID = p.Local 
    INNER JOIN equipo ev ON ev.ID = p.Visitante LIMIT 0, 25;


        """
        cursor.execute(consulta)

    resultados = cursor.fetchall()
    obtener_partidos = [
        {"time": str(fila['tiempo']), 
         "local_team": {"Nombre_Equipo": fila['Equipo_Local'], "logo": fila['Logo_Local']},
         "visitor_team": {"Nombre_Equipo": fila['Equipo_Visitante'], "logo": fila['Logo_Visitante']},
         "localGoals": fila["Goles_Local"],"visitorGoals": fila["Goles_Visitante"],              
        }
        for fila in resultados
    ]
    cursor.close()
    conexion.close()
    
    return jsonify(obtener_partidos)

@app.route('/puntos', methods=['GET'])
def obtener_puntos():
    conexion = conectar_bd()
    cursor = conexion.cursor(dictionary=True)
    
    # Obtener el parámetro 'torneo' de la URL
    torneo = request.args.get('torneo')

    # Consulta SQL para obtener puntos
    if torneo:
        consulta = """
  SELECT 
    e.Nombre_Equipo, 
    e.logo_url AS Logo_Equipo,  
    SUM(CASE 
            WHEN (p.Local = e.ID AND p.Goles_Local > p.Goles_Visitante) 
                OR (p.Visitante = e.ID AND p.Goles_Local < p.Goles_Visitante) 
            THEN 3
            WHEN p.Goles_Local = p.Goles_Visitante 
            THEN 1
            ELSE 0
        END) AS puntos
FROM 
    equipo e
JOIN 
    partidos p ON (p.Local = e.ID OR p.Visitante = e.ID)
WHERE 
    p.ID_competicion = %s 
GROUP BY 
    e.Nombre_Equipo, e.logo_url  -- Solo agrupar por Nombre_Equipo y Logo_Equipo
ORDER BY 
    puntos DESC;


        """
        cursor.execute(consulta, (torneo,))
    else:
        consulta = """
 SELECT 
    e.Nombre_Equipo, 
    e.logo_url AS Logo_Equipo,  -- Mostrar logo
    SUM(CASE 
            WHEN (p.Local = e.ID AND p.Goles_Local > p.Goles_Visitante) 
                OR (p.Visitante = e.ID AND p.Goles_Local < p.Goles_Visitante) 
            THEN 3
            WHEN p.Goles_Local = p.Goles_Visitante 
            THEN 1
            ELSE 0
        END) AS puntos
FROM 
    equipo e
JOIN 
    partidos p ON (p.Local = e.ID OR p.Visitante = e.ID)
GROUP BY 
    e.Nombre_Equipo, e.logo_url  -- Agregado logo_url al GROUP BY
ORDER BY 
    puntos DESC;


        """
        cursor.execute(consulta)

    # Recuperar los resultados de la consulta
    resultados = cursor.fetchall()
    
    # Formatear los resultados para la respuesta JSON
    obtener_puntos = [
        {"puntos": fila['puntos'],
         "nombre_equipo": fila["Nombre_Equipo"],"logo": fila['Logo_Equipo']
        }
        for fila in resultados
    ]
    
    # Cerrar la conexión
    cursor.close()
    conexion.close()
    
    return jsonify(obtener_puntos)




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


@app.route('/equipo/<int:id>', methods=['PUT',])
def modificarEquipo(id):
    nombre = request.json["Nombre_Equipo"]
    apodo = request.json["Apodo_Equipo"]
    cancha = request.json["Estadio_Equipo"]
    logo = request.json["logo_url"]

    db = conectar_bd()
    cursor = db.cursor()
    consulta = """ UPDATE `equipo` SET `Nombre_Equipo`=%s, `Apodo_Equipo`=%s, 
                `Estadio_Equipo`=%s,`logo_url`=%s
            WHERE ID =   %s """

    cursor.execute(consulta, (nombre,apodo,cancha,logo,id))
    db.commit()
    db.close()
    return {"result" : "OK",
            "id_mod": id }






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


@app.route('/competiciones/<int:id>', methods=['PUT',])
def modificarCompeticion(id):
   nombre = request.json["Nombre"]

   db = conectar_bd()
   cursor = db.cursor()
   consulta = """ UPDATE competiciones set `Nombre` = %s
    WHERE ID =   %s """
         

   cursor.execute(consulta,(nombre,id))
   db.commit()
   db.close()
   return{"result" : "OK",
            "id_mod": id }









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


