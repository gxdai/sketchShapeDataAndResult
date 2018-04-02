#!/bin/bash

# This script will download shrec13 and shrec14 to dataset folder
# This script will also download the retrieval list to returnList folder


if [ -d "dataset" ]; then
    mkdir dataset
fi

echo "Download SHREC13 ...."
wget -l 100 --user=guest --password=guest ftp://10.224.82.6/ftp/shrec13sketchShape.tar -P dataset

echo "Download SHREC14 ...."
wget -l 100 --user=guest --password=guest ftp://10.224.82.6/ftp/shrec14sketchShape.tar -P dataset

if [ -d "returnList" ]; then
    mkdir returnList
fi

echo "Download retrieval list for shrec13...."
wget -l 100 --user=guest --password=guest ftp://10.224.82.6/ftp/returnListShrec13.tar -P returnList


echo "Download retrieval list for shrec14...."
wget -l 100 --user=guest --password=guest ftp://10.224.82.6/ftp/returnListShrec14.tar -P returnList
