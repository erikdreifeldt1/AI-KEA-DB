import re
import os
import requests
import json
from bs4 import BeautifulSoup

headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3'
}

# Load existing product URLs from the JSON file
try:
    with open('ikea_product_urls.json', 'r', encoding='utf-8') as f:
        urls = json.load(f)  # Load the URLs from the JSON file
except FileNotFoundError:
    print("The JSON file with product URLs does not exist.")
    urls = []  # Start with an empty list if the file doesn't exist

# Load existing data if the file exists
if os.path.exists('ikea_products.json'):
    with open('ikea_products.json', 'r', encoding="utf-8") as f:
        full_product_dict = json.load(f)
else:
    full_product_dict = {}  # Start with an empty dictionary if the file doesn't exist

# Use a set for faster lookups of existing product IDs
existing_ids = set(full_product_dict.keys())
product_dicts_to_save = []

for url in urls:
    response = requests.get(url, headers=headers)

    if response.status_code == 200:
        soup = BeautifulSoup(response.content, 'html.parser')
        product_div = soup.find('div', class_='pip-product__subgrid product-pip js-product-pip')

        if product_div:
            # Extract data attributes
            product_id = product_div.get('data-product-no', 'No product ID found')

            # Skip if the product ID already exists
            if product_id in existing_ids:
                print(f"Skipping existing product ID: {product_id}")
                continue

            product_name = product_div.get('data-product-name', 'No product name found')
            product_price = product_div.get('data-product-price', 'No product price found')
            product_rating = product_div.get('data-product-rating', 'No product rating found')
            series = product_div.get('data-product-name', 'No series found')

            description = soup.find('span', class_='pip-header-section__description-text')
            if description:
                temparray = description.text.split(',')
                model = temparray[0]
                colorname = temparray[1] if len(temparray) > 1 else "No color name found"

            dimensions_div = soup.find('div', class_='pip-product-dimensions__dimensions-container')

            measurement = dimensions_div.text.strip() if dimensions_div else "None"

            # Initialize total weight
            total_weight = 0
            packages = soup.find_all(class_='pip-product-dimensions__package-container')

            for package in packages:
                measurement_elements = package.find_all('p', class_='pip-product-dimensions__measurement-wrapper')
                for measurements in measurement_elements:
                    if 'Vikt:' in measurements.text:
                        weight_value = float(measurements.text.split()[1])
                        total_weight += weight_value

            product_dict = {
                "Product Name": product_name,
                "Product Price": product_price,
                "Product Rating": product_rating,
                "Series": series,
                "Model": model,
                "Color Name": colorname,
                "Measurement": measurement,
                "Total Weight": round(total_weight, 2),
                "URL": url
            }

            product_dicts_to_save.append((product_id, product_dict))  # Collect product data to save later

    else:
        print(f"Failed to retrieve page for {url}. Status code: {response.status_code}")

# Write all new products to the JSON file in one go
for product_id, product_dict in product_dicts_to_save:
    full_product_dict[product_id] = product_dict

with open('ikea_products.json', 'w', encoding="utf-8") as f:
    json.dump(full_product_dict, f, ensure_ascii=False, indent=4)

print("Product data has been saved to ikea_products.json")
