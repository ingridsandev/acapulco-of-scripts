#/bin/sh

function process {
    echo "$2 started"
    start=`date +%s`
    
    # Mock process time
    sleep $1

    end=`date +%s`
    echo "$2 took $((end-start)) seconds to complete"
    exit $3
}

process 5 "p1" 0 &
process_id_1=$!
process 2 "p2" 1 &
process_id_2=$!

wait $process_id_1
echo Job 1 exited with status $?

wait $process_id_2
echo Job 2 exited with status $?