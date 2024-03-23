import requests
import time

while True:
    print("HIT")
    try:
        # Replace 'http://10.30.0.100/persist/team##' with your actual URL
        response = requests.get('http://10.30.0.100/persist/team##')
        # Optional: print the response text or status code if you need
        print(response.text)
    except requests.exceptions.RequestException as e:
        # This will catch any error, like network connection errors
        print(f"Error making request: {e}")
    
    # Wait for 60 seconds before making the next request
    time.sleep(60)
