from selenium import webdriver

# Set browser config
options = webdriver.ChromeOptions()
options.add_argument('--ignore-certificate-errors')
driver = webdriver.Chrome(chrome_options=options)

driver.get('https://www.liverpool.com.mx/tienda/home')