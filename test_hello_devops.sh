#!/bin/bash

output=$(./hello_devops.sh)

if [[ $output == *"Hello DevOps!"* ]]; then
    echo "Test Passed ✅"
    exit 0
else
    echo "Test Failed ❌"
    exit 1
fi

