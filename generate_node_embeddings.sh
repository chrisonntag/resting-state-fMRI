#!/bin/bash

cd gcn/gcn

for patient in {1..60}
do
    for treatment in {1..2}
    do
        slug=$(printf "p%03d_%d" "$patient" "$treatment")
        python train.py --dataset "$slug" --learning_rate 0.01 --epochs 10 --early_stopping 10 --hidden1 10
    done
done

