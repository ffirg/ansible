#!/bin/bash

subscription-manager status
if [ $? -eq 0 ]; then
    echo OK
else
    subscription-manager register --username=<REPLACE> --password=<REPLACE> --auto-attach
fi
