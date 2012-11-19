#!/usr/bin/env python
import re
import json
import urllib
url = "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20location%3D22191&format=json&diagnostics=true&callback="
if __name__ == "__main__":
    req = urllib.urlopen(url)
    weather = json.loads(req.read())
    w_info = weather["query"]["results"]["channel"]
    print re.sub('<[^<]+?>', '', w_info["item"]["description"])
    print "Sunrise %s / Sunset %s" % (w_info["astronomy"]["sunrise"],
            w_info["astronomy"]["sunset"])
