#!/bin/bash
numberoflines=5
address="https://www.facebook.com/feeds/notifications.php?id=636446293&viewer=636446293&key=AWilRjctDytfLcx1&format=rss20"
wget --user-agent="Mozilla/5.0 (X11; U; Linux i686; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.55 Safari/533.4" -q $address -O - | grep title | sed 's/<title>//g' | sed 's/<\/title>//g' | sed "s/\&apos\;/'/g" | sed 's/\&quot\;/"/g' | tail -n +2 | head -n $numberoflines
