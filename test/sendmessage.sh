num=${1:-5}

x=1
while [ $x -le $num ]
do
  echo "Sending message #$x"
  curl -kv -d "msg=test message #$x" http://localhost:9080/mdbtest/api/enqueue
  x=$(( $x + 1 ))
  sleep 1
done
