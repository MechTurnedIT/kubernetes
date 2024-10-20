for j in {1..10}; do
  for i in {1..1000}; do
    curl -s -o /dev/null -w "%{http_code}\n" http://a48a1d12b5d2e44cda4329315812a30e-1464521043.eu-west-1.elb.amazonaws.com/ &
  done
  wait  # This waits for all background jobs to finish before starting the next iteration of the outer loop
done
