#/bin/sh
p1(){
    echo "> process 1 that will take $1 seconds to complete"
    sleep $1
    echo "> finished p1"
    exit $2
}

p2(){
    echo ">> process 2 that will take $1 seconds to complete"
    sleep $1
    echo ">> finished p2"
    exit $2
}

p1 5 0 &
process_id_1=$!
p2 2 1 &
process_id_2=$!

wait $process_id_1
echo Job 1 exited with status $?

wait $process_id_2
echo Job 2 exited with status $?

