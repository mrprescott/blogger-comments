#!/usr/bin/env bash

cat work/posts.txt | xargs -I _ ./fetchWidgetForPost.sh _
