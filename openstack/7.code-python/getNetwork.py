import requests

res = requests.get('http://10.2.1.201:9696/v2.0/networks',
					headers = {'content-type': 'application/json',
					'X-Auth-Token': 'gAAAAABpXNVojBP1JMWeg46VLX0mWK7uhdkEk8CvTLf1IaUZJgJTdQfRC8_GwecBzoAgmOyhGLNbMsIsc3_GG3TvmZrAa_vITfLP6oggyfze4l87_1nJp5TqpdkqjhcSYUJ5012ALYOxDiXZX7tF9Ho_HkFfVIZNMRt6Cla79qjINJEwJHBraxs'
                    },)
print (res.text)