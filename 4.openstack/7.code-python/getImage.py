import requests

res = requests.get('http://10.2.1.201:9292/v2/images',
                    headers = {'content-type': 'application/json',
					'X-Auth-Token': 'gAAAAABpXOY45b7E87-gUmAO3rAaFDfiMOXY2mquZJsrZRITk8vpPutAYQjQpK3Wwa7Sqk9BlGa4_ZGKOJlSCMwK8OrfW5eFlyDqehWFq_IuAMbtmAQakhGUwTYqRZtjMuVKJ0ZS0kC4gpKcxhmGE4EawvGynYV9mPFwZkYtfFSNb_NVrJQjJBE'
                    })
print(res.text)