import requests
import json

payload ={ "auth": {
    "identity": {
        "methods": ["password"],
        "password": {
            "user": {
              "name": "admin",
              "domain": { "name": "Default" },
              "password": "Tuong123"
            }
          }
        },
        "scope": {
          "project": {
            "name": "admin",
            "domain": { "name": "Default" }
          }
        }
      }
}
res = requests.post('http://10.2.1.201:5000/v3/auth/tokens',
					headers = {'content-type' : 'application/json'},
					data= json.dumps(payload))
print (res.headers)





