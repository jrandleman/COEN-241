#!/bin/bash
sysbench --test=fileio --file-test-mode=rndrw --num-threads=8 --file-total-size=2G --time=30 prepare
echo ""
echo "---------------------------------"
echo ">>> Running Measurement 1 [=    ]"
echo "---------------------------------"
echo ""
sysbench --test=fileio --file-test-mode=rndrw --num-threads=8 --file-total-size=2G --time=30 run
echo ""
echo "-------------------------"
echo ">>> Clearing OS Cache ..."
echo "-------------------------"
echo ""
sync
echo 3 > /proc/sys/vm/drop_caches
echo ""
echo "---------------------------------"
echo ">>> Running Measurement 2 [==   ]"
echo "---------------------------------"
echo ""
sysbench --test=fileio --file-test-mode=rndrw --num-threads=8 --file-total-size=2G --time=30 run
echo ""
echo "-------------------------"
echo ">>> Clearing OS Cache ..."
echo "-------------------------"
echo ""
sync
echo 3 > /proc/sys/vm/drop_caches
echo ""
echo "---------------------------------"
echo ">>> Running Measurement 3 [===  ]"
echo "---------------------------------"
echo ""
sysbench --test=fileio --file-test-mode=rndrw --num-threads=8 --file-total-size=2G --time=30 run
echo ""
echo "-------------------------"
echo ">>> Clearing OS Cache ..."
echo "-------------------------"
echo ""
sync
echo 3 > /proc/sys/vm/drop_caches
echo ""
echo "---------------------------------"
echo ">>> Running Measurement 4 [==== ]"
echo "---------------------------------"
echo ""
sysbench --test=fileio --file-test-mode=rndrw --num-threads=8 --file-total-size=2G --time=30 run
echo ""
echo "-------------------------"
echo ">>> Clearing OS Cache ..."
echo "-------------------------"
echo ""
sync
echo 3 > /proc/sys/vm/drop_caches
echo ""
echo "---------------------------------"
echo ">>> Running Measurement 5 [=====]"
echo "---------------------------------"
echo ""
sysbench --test=fileio --file-test-mode=rndrw --num-threads=8 --file-total-size=2G --time=30 run
sysbench --test=fileio --file-test-mode=rndrw --num-threads=8 --file-total-size=2G --time=30 cleanup