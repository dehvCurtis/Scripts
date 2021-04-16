#! /usr/bin/python
import requests
import os

command = "/Users/dcurtis/Downloads/dependency-check/bin/dependency-check.sh --project \"webgoat\" --scan \"/Users/dcurtis/Downloads/WebGoat\" -f JSON"
os.system(command)
from requests_toolbelt.multipart.encoder import MultipartEncoder

m = MultipartEncoder(
    fields={'scan_date': '2019-07-04', 'scan_type': 'Dependency Check Scan', 'engagement': '3',
            'file': ('dependency-check-report.json',
                     open('/Users/dcurtis/Downloads/dependency-check/bin/dependency-check-report.json', 'rb'),
                     'application/json')}
)

url = "http://localhost:8080/api/v2/import-scan/"

headers = {'Content-type': 'multipart/form-data',
           'Authorization': 'Token 6184896e924935ba3eda775d31d7e3a6fcd7b6d2',
           'Connection': "keep-alive",
           'accept-encoding': "gzip, deflate",
           'content-length': "109801126",
           'Accept': "*/*",
           'Host': "localhost:8080"}

# r = requests.post(url, headers=headers, data=m)
r = requests.request("POST", url, data=m, headers=headers)
print(r.text)