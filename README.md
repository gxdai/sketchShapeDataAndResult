# sketchShapeDataAndResult

## Download data
1. run `chmod +x download.sh` to change file mode 
2. run `./download.sh`. This script will download shrec13 and shrec14 into **dataset** folder, also download the retrieval result to **returnList** folder.
    1. run `cd dataset` to enter the **dataset** directory
    2. run `tar -xvf *tar` to extract shrec13 and shrec14 dataset.
    3. run `cd ../returnList` to enter the **returnList** folder.
    4. run `tar -xvf *tar` to extract the retrieval list.

## Plot result (MATLAB)
### SHREC 13
Evaluation measurments are noted in [shrec13\_map.txt](shrec13_map.txt):

| NN | FT | ST | DCG | MAP|
| --- | --- | --- | --- | --- |
|0.734074|0.742955|0.794579|0.823943|0.765041|

run `plot13` to plot precision-recall curve for shrec13.
<img src="PR_CURVE_13.jpg" alt="Precision recall curve for shrec13" style="width: 5;">

### SHREC 14
Evaluation measurments are noted in [shrec14\_map.txt](shrec14_map.txt):

| NN | FT | ST | DCG | MAP|
| --- | --- | --- | --- | --- |
|0.734074|0.742955|0.794579|0.823943|0.765041|

run `plot14` to plot precision-recall curve for shrec14.
<img src="PR_CURVE_14.jpg" alt="Precision recall curve for shrec14" style="width: 5;">

