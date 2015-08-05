# Rails benchmarks API

## grape gem

```
Concurrency Level:      4
Time taken for tests:   6.120 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      12790000 bytes
HTML transferred:       10370000 bytes
Requests per second:    1633.89 [#/sec] (mean)
Time per request:       2.448 [ms] (mean)
Time per request:       0.612 [ms] (mean, across all concurrent requests)
Transfer rate:          2040.77 [Kbytes/sec] received
```

## rails-api gem

```
Concurrency Level:      4
Time taken for tests:   6.013 seconds
Complete requests:      10000
Failed requests:        0
Total transferred:      13670000 bytes
HTML transferred:       10370000 bytes
Requests per second:    1663.14 [#/sec] (mean)
Time per request:       2.405 [ms] (mean)
Time per request:       0.601 [ms] (mean, across all concurrent requests)
Transfer rate:          2220.23 [Kbytes/sec] received
```

## rails basic

```
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
```
