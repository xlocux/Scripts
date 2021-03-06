#!/usr/bin/env python
# pip install shodan


import shodan
import sys

# Configuration
API_KEY = "your_api_key"

# Input validation
if len(sys.argv) == 1:
        print ('Usage: %s <search query>' % sys.argv[0])
        sys.exit(1)

try:
        api = shodan.Shodan(API_KEY)

        query = ' '.join(sys.argv[1:])
        result = api.search(query)

        for service in result['matches']:
                print (service['ip_str'])
except Exception as e:
        print ('Error: %s' % e)
        sys.exit(1)

