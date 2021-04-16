#!/usr/bin/env python

import json
from copy import deepcopy


json_obj = {
    "list":
        [{list}]
}

sorted_json_obj = deepcopy(json_obj)
sorted_json_obj['list'] = sorted(json_obj['list'], key=lambda k: k['list1'], reverse=True)
sorted_json_obj()