import mysql.connector

# Establecer la conexión a la base de datos
conexion = mysql.connector.connect(
    host="10.9.120.5",      # Cambia por la dirección de tu servidor MySQL
    user="tallball",     # Cambia por tu nombre de usuario de MySQL
    password="tallball111",  # Cambia por tu contraseña de MySQL
    database="tallball"  # Cambia por el nombre de tu base de datos
)

# Crear un cursor para ejecutar consultas
cursor = conexion.cursor()

# Ejecutar una consulta SQL
cursor.execute("SELECT * FROM equipo")

# Obtener los resultados
resultados = cursor.fetchall()

# Mostrar los resultados
for fila in resultados:
    print(fila)

# Cerrar el cursor y la conexión
cursor.close()
conexion.close()
