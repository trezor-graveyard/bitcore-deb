#!/usr/bin/python2

import requests
import sys
import json

COMPARE_URLS = ["insight.bitpay.com", "localbitcoinschain.com", "bitcore1.trezor.io", "bitcore3.trezor.io"]

def check_bitcore(bitcore_url):
    sync_url = "https://%s/api/sync" % bitcore_url
    r = requests.get(sync_url, timeout=20)
    if r.status_code != 200:
        raise Exception("Status code of %s: %d" % (sync_url, r.status_code))

    try:
        data = json.loads(r.text)
        return int(data["blockChainHeight"])
    except Exception as e:
        raise Exception("Failed to load %s: %s" % (sync_url, str(e)))

def main(bitcore_url, compare_urls):
    height1 = check_bitcore(bitcore_url)

    height2 = None
    for compare_url in compare_urls:
        try:
            height2 = check_bitcore(compare_url)
            break
        except Exception as e:
            print("%s: %s" % (compare_url, str(e)))

    if height2 == None:
        raise Exception("No available server for crosscheck")

    print("%s: %d" %( bitcore_url, height1))
    print("%s: %d" %( compare_url, height1))

    if height1 <= height2 - 2:
        raise Exception("%s behind %s for two or more blocks!" % (bitcore_url, compare_url))

    if height1 > height2 +2:
        raise Exception("%s forward %s for two or more blocks!" % (bitcore_url, compare_url))

if __name__ == '__main__':
    if len(sys.argv) < 3:
        print("Usage: %s <bitcore_url> <compare_1_url> <compare_n_url>" % sys.argv[0])
        sys.exit(127)

    try:
        bitcore_url = sys.argv[1]

        compare_urls = []
        for i in range(2, len(sys.argv)):
            s = sys.argv[i]
            if s.isdigit():
                compare_urls.append(COMPARE_URLS[int(s)])
            else:
                compare_urls.append(s)

        print("Backend %s" % bitcore_url)
        print("Comparing to %s" % compare_urls)

        ret = main(bitcore_url, compare_urls)
    except Exception as e:
        print(str(e))
        print("Error")
        sys.exit(1)

    print("OK")
    sys.exit(0)
