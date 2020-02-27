#!/usr/bin/env python3
# favhash

import sys
import mmh3
import requests
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('-u', '--url', help='Input a: URL', action='store')

args = parser.parse_args()

def parser_error(errmsg):

    print('Usage: python %s [Options] use -h for help' % sys.argv[0])
    print('Error: %s' % errmsg)
    sys.exit()

url = args.url

resp = requests.get(url)
ico = resp.content.encode('base64')
hash = mmh3.hash(ico)
print (hash)
	

