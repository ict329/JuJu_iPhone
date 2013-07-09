#!/bin/bash
#Your Command Below!!!

cls=$1

if [ -z $1 ]
    then exit 0
fi

sed "s/UserManager/$cls/g" UserManager.h > $cls".h"
sed "s/UserManager/$cls/g" UserManager.m > $cls".m"
