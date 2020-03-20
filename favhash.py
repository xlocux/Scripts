# favhash is a script to obtain a favicon hash. 
# then search in shodan https://www.shodan.io/search?query=http.favicon.hash%3A-538460259&page=3
# or use qshodanscript

import sys
import mmh3
import requests
import argparse
import base64


parser = argparse.ArgumentParser()
parser.add_argument('-u', '--url', help='Input a: URL', action='store')

args = parser.parse_args()

def parser_error(errmsg):

    print('Usage: python %s [Options] use -h for help' % sys.argv[0])
    print('Error: %s' % errmsg)
    sys.exit()

url = args.url


if url[len(url)-1] != "/":
	url = url + "/"
try:
	resp = requests.get(url + "favicon.ico")
except:
	print ("error")

ico = base64.encodebytes(resp.content)
hash = mmh3.hash(ico)
print (hash)

