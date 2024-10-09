from flask import Flask, jsonify
import mysql.connector

app = Flask(__name__)

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
    app.run(debug=True)
