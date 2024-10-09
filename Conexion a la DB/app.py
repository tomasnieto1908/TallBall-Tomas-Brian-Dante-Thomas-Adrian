from flask import Flask, request, jsonify
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
    app.run(debug=True)
