import requests
import json

KEYSTONE_URL = "http://10.2.1.201:5000/v3"
TOKEN = "gAAAAABpXNnkfBWmbMk_Snn36aq6W7quqh8ghxfBuhc3qbmFC6vHxaev7H4S1Jq5Pc3twGS3pgJWkBMkqi78GINWWtB67hYet_jnVXHso1V2fZaPENKNBCyBN-mT74utEzbRChSI2e6vZEYbMZHvmF6Xac9_1qnjyNI_SIRbnxYRHbC4m2gXkPw"   # token cần truy ngược

headers = {
    "X-Auth-Token": TOKEN,
    "X-Subject-Token": TOKEN,
    "Content-Type": "application/json"
}

resp = requests.get(
    f"{KEYSTONE_URL}/auth/tokens",
    headers=headers
)

if resp.status_code != 200:
    print("Token hết hạn")
    print(resp.text)
    exit(1)

print(resp.text)

data = resp.json()["token"]

print("User name   :", data["user"]["name"])
print("User ID     :", data["user"]["id"])
print("User domain :", data["user"]["domain"]["name"])

if "project" in data:
    print("Project     :", data["project"]["name"])
    print("Project ID  :", data["project"]["id"])

print("\nRoles:")
for r in data["roles"]:
    print("-", r["name"])

print("\nExpires at :", data["expires_at"])