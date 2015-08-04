# Simple app with Rails API gem

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

Document Path:          /sample
Document Length:        1564 bytes

Concurrency Level:      4
Time taken for tests:   4.793 seconds
Complete requests:      10000
Failed requests:        0
Non-2xx responses:      10000
Total transferred:      17250000 bytes
HTML transferred:       15640000 bytes
Requests per second:    2086.21 [#/sec] (mean)
Time per request:       1.917 [ms] (mean)
Time per request:       0.479 [ms] (mean, across all concurrent requests)
Transfer rate:          3514.37 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     1    2   2.1      1      48
Waiting:        1    1   1.3      1      48
Total:          1    2   2.1      1      48

Percentage of the requests served within a certain time (ms)
  50%      1
  66%      2
  75%      2
  80%      2
  90%      2
  95%      4
  98%      9
  99%     12
 100%     48 (longest request)
```
