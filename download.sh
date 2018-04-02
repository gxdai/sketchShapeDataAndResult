#!/bin/bash

# This script will create a new directory "dataset", and download shrec13 and shrec14 to "dataset"


if [ -d "dataset" ]; then
    mkdir dataset
fi

wget -l 100 --user=guest --password=guest ftp://10.224.82.6/ftp/*tar -P dataset
