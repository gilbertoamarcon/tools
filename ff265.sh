#!/bin/bash
ffmpeg -i $1 -c:v libx265 -crf 28 -c:a aac -b:a 128k $2
