#!/bin/bash
function check()
{
    echo "Sleep for $1 seconds"
    sleep $1
    exit $2
}
check 3 0 &
b=$!

check 1 0 &
c=$!

echo "Checking the status"
wait $b 
echo "wait b"
wait $c 
echo "wait c"