#!/bin/bash

LOCAL=icons.zip
REMOTE=https://media.amazonwebservices.com/AWS-Design/Arch-Center/16.2.22_Update/AWS_Simple_Icons_EPS-SVG_v16.2.22.zip

git checkout gh-pages \
	&& rm -rf images/* 2> /dev/null \
	&& curl -o $LOCAL $REMOTE \
	&& unzip -j $LOCAL -d images/ -x *._* \
	&& rm $LOCAL \
	&& git add images/ \
	&& git commit -m "Build: $(date -u)"
