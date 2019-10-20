import requests
import json
import os

class Github:
    def retrieve_updates(self):
        get_headers = {'Accept': 'application/vnd.github.preview'}
        get_url = 'https://api.github.com/users/freemanpd'
        get_response = requests.get(get_url, headers=get_headers)
        data  = get_response.text
        parsed = json.loads(data)
        payload = json.dumps(parsed, indent=4)
        post_headers = 'accept: application/json'
        post_url = os.getenv('des_endpoint', 'http://0.0.0.0:80'),
        post_response = requests.post(post_url, headers=post_headers,  data=payload)

# future: rolls and trending