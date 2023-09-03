import psycopg2

# Establish a connection to the PostgreSQL database
connection = psycopg2.connect(
    host="localhost",
    port="5432",
    user="Username",
    password="Password",
    database="Karyawan"
)

# Create a cursor object to interact with the database
cursor = connection.cursor()



# SQL query to insert data
insert_query = ("INSERT INTO users (first_name, last_name, age, sex, income)" 
                "VALUES (%s, %s, %s)")
data_to_insert = ("Bambang", "Pamungkas", 25, "Laki-laki", 100000)

# Execute the query with the data
cursor.execute(insert_query, data_to_insert)

# Commit the transaction
connection.commit()

# Close the cursor and connection
cursor.close()
connection.close()
