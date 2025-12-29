#!/bin/bash

ffmpeg -i midcentury_study_orig.png -vf "crop=1536:864:0:80,scale=1920:1080:flags=lanczos" -y midcentury_study.png
