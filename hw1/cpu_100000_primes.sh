#!/bin/bash
echo ""
echo "---------------------------------"
echo ">>> Running Measurement 1 [=    ]"
echo "---------------------------------"
echo ""
sysbench --test=cpu --cpu-max-prime=100000 --time=30 run
echo ""
echo "---------------------------------"
echo ">>> Running Measurement 2 [==   ]"
echo "---------------------------------"
echo ""
sysbench --test=cpu --cpu-max-prime=100000 --time=30 run
echo ""
echo "---------------------------------"
echo ">>> Running Measurement 3 [===  ]"
echo "---------------------------------"
echo ""
sysbench --test=cpu --cpu-max-prime=100000 --time=30 run
echo ""
echo "---------------------------------"
echo ">>> Running Measurement 4 [==== ]"
echo "---------------------------------"
echo ""
sysbench --test=cpu --cpu-max-prime=100000 --time=30 run
echo ""
echo "---------------------------------"
echo ">>> Running Measurement 5 [=====]"
echo "---------------------------------"
echo ""
sysbench --test=cpu --cpu-max-prime=100000 --time=30 run