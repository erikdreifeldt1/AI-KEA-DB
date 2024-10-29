import json
import psycopg2

# Load data from JSON file
with open('ikea_products.json', 'r', encoding="utf-8") as f:
    products_data = json.load(f)  # This should load the JSON data into products_data

# Connect to your Neon PostgreSQL database
connection = psycopg2.connect(
    dbname='' , # Add your database name here
    user='', # Add your user here 
    password='',# Add your password here   
    host='', # Add your host here
    port='5432',                
    sslmode='require'           
)

cursor = connection.cursor()

# Iterate through the products and insert them into the database
for product_id, product in products_data.items():
    # Prepare the insert query
    insert_query = """
    INSERT INTO Products (id, series, model, price, rating, measurements, weight, colour_name, url)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)
    ON CONFLICT (id) DO NOTHING;  -- Avoid duplicate entries based on the primary key
    """
    
    # Extract data for insertion
    data_tuple = (
        product_id,  # Assuming product_id is the ID you want to use
        product["Series"],
        product["Model"],
        int(product["Product Price"]),  # Convert price to int
        float(product["Product Rating"]),  # Convert rating to float
        product["Measurement"],
        float(product["Total Weight"]),  # Convert weight to float
        product["Color Name"],
        product["URL"]
    )

    # Execute the insert query
    cursor.execute(insert_query, data_tuple)

# Commit the transaction and close the connection
connection.commit()
cursor.close()
connection.close()

print("Data has been transferred successfully!")
