#!/usr/bin/env bash
# Usage: fetchWidgetForPost.sh <postURL>

url=$1

widgetUrl="https://apis.google.com/u/0/_/widget/render/comments?first_party_property=BLOGGER&query=$url"
echo Widget URL: $widgetUrl

#filename=echo $url | sed -e 's|http:\/\/\(.*\)|\1|g' | sed -e 's|[^A-Za-z0-9.]|-|g'
# strip off the protocol
filename=$(sed 's|http:\/\/\(.*\)|\1|g' <<< $url)
# convert awkward characters to hyphens
filename=$(sed 's|[^A-Za-z0-9.]|-|g' <<< $filename)

echo Filename: $filename

mkdir -p work/widgets
wget -O work/widgets/$filename $widgetUrl
