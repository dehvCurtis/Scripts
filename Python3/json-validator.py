# Syntax checker to validate JSON

import json

def validate(data):
    try:
        json.loads(data)
    except ValueError as err:
        return False
    return True

data = """

"""

# Sample Data
# Valid: {"name": "jane doe", "salary": 9000, "email": "jane.doe@pynative.com"}
# Invalid: {"name": "jane doe", "salary": 9000, "email": "jane.doe@pynative.com",}
isValid = validate(data)
print(isValid)