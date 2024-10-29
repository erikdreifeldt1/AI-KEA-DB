import re
import requests
import json
from bs4 import BeautifulSoup

# Step 1: Set up the category URL
category_url = "https://www.ikea.com/se/en/cat/lamps-li002/?filters=f-online-sellable%3Atrue"
## Gardiner: "https://www.ikea.com/se/en/cat/curtains-blinds-tl002/?filters=f-online-sellable%3Atrue" 
## Matbord: "https://www.ikea.com/se/en/cat/dining-tables-21825/?filters=f-online-sellable%3Atrue"
## Mattor: "https://www.ikea.com/se/en/cat/rugs-10653/?filters=f-online-sellable%3Atrue"
## Fotöljer: "https://www.ikea.com/se/en/cat/armchairs-chaise-longues-fu006/?filters=f-online-sellable%3Atrue"
## TV-bänkar: "https://www.ikea.com/se/en/cat/tv-media-furniture-10475/?filters=f-online-sellable%3Atrue" 
## Bord: "https://www.ikea.com/se/en/cat/coffee-side-tables-10705/?filters=f-online-sellable%3Atrue"
## Soffor: "https://www.ikea.com/se/en/cat/sofas-fu003/?filters=f-online-sellable%3Atrue"
##"https://www.ikea.com/se/en/cat/sheepskins-cowhides-20544//"
##https://www.ikea.com/se/en/rooms/living-room/
## https://www.ikea.com/se/en/cat/sheepskins-cowhides-20544/
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3'
}
urls = []
i = 0
try:
    with open('ikea_product_urls.json', 'r', encoding='utf-8') as json_file:
        existing_urls = json.load(json_file)
        urls.extend(existing_urls)  # Add existing URLs to the list
except FileNotFoundError:
    existing_urls = []  # If the file doesn't exist, start with an empty list

# Step 2: Fetch the category page
response = requests.get(category_url, headers=headers)

if response.status_code == 200:
    print("Category gage fetched successfully")

    # Step 3: Parse the category page
    soup = BeautifulSoup(response.content, 'html.parser')

    # Find all the product links (this selector might change, so inspect the page)
    product_links = soup.select('a', class_ = 'div.plp-mastercard') # Adjust the class as necessary

    
    # Step 4: Loop through each product link and scrape data
    for link in product_links:

        if len(urls) % 20 == 0:
            i += 1
            print(i)  # Check if we already have 5 URLs
        relative_url = link.get('href') # Get the product URL
        if relative_url:
            # IF the URL is relative, add the base URL
            if not relative_url.startswith('http'):
                product_url = f"https://www.ikea.com{relative_url}"
            else:
                product_url = relative_url
                
            if "/en/p/" in product_url and product_url not in urls:
                urls.append(product_url)
            
            product_response = requests.get(product_url, headers=headers)
            

            
                #product_soup = BeautifulSoup(product_response.content, 'html.parser')
                # Here you would include your existing product scraping logic
                # For example:
                
            #product_name = product_soup.find('h1').text.strip()  # Example, adjust based on actual structure
           
        else:
            print(f"Failed to retrieve product page. Status code: {product_response.status_code}")
            print(product_url)
    #print(urls)
    with open ('ikea_product_urls.json', 'w', encoding="utf-8") as json_file:
        json.dump(urls, json_file, ensure_ascii=False, indent=4)
    
    print("Product URLs have been saved to ikea_product_urls.json")
else:
    print(f"Failed to retrieve category page. Status code: {response.status_code}")