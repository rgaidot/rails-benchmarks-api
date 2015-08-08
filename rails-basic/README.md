# Simple app with Rails

## Run app

```bash
RAILS_ENV=production bundle exec puma -C config/puma.rb
```

## Apache Benchmark cmd

```bash
ab -c 4 -n 10000 -H "Content-type: application/json" http://127.0.0.1:3000/samples
```

## Results

```
This is ApacheBench, Version 2.3 <$Revision: 1604373 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 127.0.0.1 (be patient)
Completed 1000 requests
Completed 2000 requests
Completed 3000 requests
Completed 4000 requests
Completed 5000 requests
Completed 6000 requests
Completed 7000 requests
Completed 8000 requests
Completed 9000 requests
Completed 10000 requests
Finished 10000 requests


Server Software:
Server Hostname:        127.0.0.1
Server Port:            3000

Document Path:          /samples
Document Length:        1037 bytes

Concurrency Level:      4
Time taken for tests:   6.378 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      13670000 bytes
HTML transferred:       10370000 bytes
Requests per second:    1567.92 [#/sec] (mean)
Time per request:       2.551 [ms] (mean)
Time per request:       0.638 [ms] (mean, across all concurrent requests)
Transfer rate:          2093.12 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     1    2   2.3      2      64
Waiting:        1    2   1.4      2      63
Total:          2    3   2.3      2      64

Percentage of the requests served within a certain time (ms)
  50%      2
  66%      2
  75%      2
  80%      2
  90%      3
  95%      5
  98%      8
  99%     12
 100%     64 (longest request)
```
