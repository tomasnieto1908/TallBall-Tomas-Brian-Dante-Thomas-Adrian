<<<<<<< HEAD
from flask import Flask, request, jsonify
=======
from flask import Flask, jsonify
>>>>>>> d38b7453644085a8036488593195cd6316961973
import mysql.connector

app = Flask(__name__)

<<<<<<< HEAD
# Función para conectar a la base de datos MySQL
def conectar_bd():
    return mysql.connector.connect(
        host="10.9.120.5",       # Cambia esto por tu host MySQL
        user="tallball",      # Cambia por tu usuario de MySQL
        password="tallball111",  # Cambia por tu contraseña de MySQL
        database="tallball"  # Cambia por el nombre de tu base de datos
    )

# Ruta que acepta solicitudes POST
@app.route('/equipo', methods=['POST'])
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

if __name__ == "__main__":
=======
# Configuración de la conexión a la base de datos
db_config = {
    'host': '10.9.120.5',
    'user': 'tallball',
    'password': 'tallball111',
    'database': 'tallball'
}

@app.route('/jugadores', methods=['GET'])
def obtener_jugadores_con_equipo():
    conexion = mysql.connector.connect(**db_config)
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

if __name__ == '__main__':
>>>>>>> d38b7453644085a8036488593195cd6316961973
    app.run(debug=True)
