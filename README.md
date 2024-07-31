# Benchmark of different Elixir rate limiters

Run like this: `MIX_ENV=bench LIMIT=1 SCALE=5000 RANGE=10000 PARALLEL=500 mix run bench/basic.exs`

## Results

Run from `./script.sh` :)

```console
prallel: 600
limit: 1
scale: 5000
range: 200000

Operating System: Linux
CPU Information: AMD Ryzen 9 5900X 12-Core Processor
Number of Available Cores: 24
Available memory: 31.25 GB
Elixir 1.16.2
Erlang 26.1.2
JIT enabled: true

Benchmark suite executing with the following configuration:
warmup: 14 s
time: 6 s
memory time: 0 ns
reduction time: 0 ns
parallel: 600
inputs: none specified
Estimated total run time: 1 min 20 s

Benchmarking ex_rated ...
Benchmarking hammer ...
Benchmarking plug_attack ...
Benchmarking rate_limiter ...
Calculating statistics...
Formatting results...

Name                   ips        average  deviation         median         99th %
plug_attack        46.23 K       21.63 μs  ±1234.35%        0.83 μs       73.03 μs
rate_limiter       34.29 K       29.16 μs  ±1364.58%        2.63 μs        4.43 μs
ex_rated            8.74 K      114.42 μs  ±1811.31%        2.79 μs       87.73 μs
hammer              0.40 K     2513.00 μs     ±7.89%     2494.30 μs     3066.06 μs

Comparison:
plug_attack        46.23 K
rate_limiter       34.29 K - 1.35x slower +7.53 μs
ex_rated            8.74 K - 5.29x slower +92.79 μs
hammer              0.40 K - 116.17x slower +2491.36 μs

Extended statistics:

Name                 minimum        maximum    sample size                     mode
plug_attack          0.29 μs    17344.46 μs        72.47 M                  0.72 μs
rate_limiter         0.41 μs    70876.98 μs        46.77 M                  2.69 μs
ex_rated                1 μs   169020.44 μs        16.63 M                  2.70 μs
hammer               4.63 μs     9483.51 μs         1.43 M               2462.41 μs
prallel: 500
limit: 1
scale: 5000
range: 200000

Operating System: Linux
CPU Information: AMD Ryzen 9 5900X 12-Core Processor
Number of Available Cores: 24
Available memory: 31.25 GB
Elixir 1.16.2
Erlang 26.1.2
JIT enabled: true

Benchmark suite executing with the following configuration:
warmup: 14 s
time: 6 s
memory time: 0 ns
reduction time: 0 ns
parallel: 500
inputs: none specified
Estimated total run time: 1 min 20 s

Benchmarking ex_rated ...
Benchmarking hammer ...
Benchmarking plug_attack ...
Benchmarking rate_limiter ...
Calculating statistics...
Formatting results...

Name                   ips        average  deviation         median         99th %
plug_attack        54.59 K       18.32 μs  ±1231.13%        0.87 μs       58.67 μs
rate_limiter       40.42 K       24.74 μs  ±1355.02%        2.61 μs        4.68 μs
ex_rated           18.77 K       53.29 μs  ±1905.87%        2.72 μs       69.81 μs
hammer              0.47 K     2113.49 μs     ±5.92%     2101.54 μs     2314.00 μs

Comparison:
plug_attack        54.59 K
rate_limiter       40.42 K - 1.35x slower +6.42 μs
ex_rated           18.77 K - 2.91x slower +34.97 μs
hammer              0.47 K - 115.38x slower +2095.17 μs

Extended statistics:

Name                 minimum        maximum    sample size                     mode
plug_attack          0.29 μs    28932.08 μs        70.83 M                  0.74 μs
rate_limiter         0.49 μs    66825.86 μs        46.52 M                  2.64 μs
ex_rated             1.01 μs    80448.17 μs        27.52 M                  2.66 μs
hammer            1774.36 μs     7577.78 μs         1.42 M               2086.30 μs
prallel: 600
limit: 1
scale: 5000
range: 100000

Operating System: Linux
CPU Information: AMD Ryzen 9 5900X 12-Core Processor
Number of Available Cores: 24
Available memory: 31.25 GB
Elixir 1.16.2
Erlang 26.1.2
JIT enabled: true

Benchmark suite executing with the following configuration:
warmup: 14 s
time: 6 s
memory time: 0 ns
reduction time: 0 ns
parallel: 600
inputs: none specified
Estimated total run time: 1 min 20 s

Benchmarking ex_rated ...
Benchmarking hammer ...
Benchmarking plug_attack ...
Benchmarking rate_limiter ...
Calculating statistics...
Formatting results...

Name                   ips        average  deviation         median         99th %
plug_attack        53.11 K       18.83 μs  ±1285.02%        0.71 μs       24.79 μs
rate_limiter       34.71 K       28.81 μs  ±1395.14%        2.39 μs        5.62 μs
ex_rated           19.84 K       50.40 μs  ±1472.38%        2.62 μs       55.39 μs
hammer              0.40 K     2481.01 μs     ±6.12%     2465.71 μs     2748.38 μs

Comparison:
plug_attack        53.11 K
rate_limiter       34.71 K - 1.53x slower +9.98 μs
ex_rated           19.84 K - 2.68x slower +31.58 μs
hammer              0.40 K - 131.77x slower +2462.18 μs

Extended statistics:

Name                 minimum        maximum    sample size                     mode
plug_attack          0.29 μs    33964.74 μs        80.25 M                  0.62 μs
rate_limiter         0.40 μs    61486.34 μs        46.95 M                  2.40 μs
ex_rated             1.01 μs    70671.76 μs        34.90 M                  2.58 μs
hammer            2046.46 μs     8406.63 μs         1.45 M               2436.76 μs
prallel: 500
limit: 1
scale: 5000
range: 100000

Operating System: Linux
CPU Information: AMD Ryzen 9 5900X 12-Core Processor
Number of Available Cores: 24
Available memory: 31.25 GB
Elixir 1.16.2
Erlang 26.1.2
JIT enabled: true

Benchmark suite executing with the following configuration:
warmup: 14 s
time: 6 s
memory time: 0 ns
reduction time: 0 ns
parallel: 500
inputs: none specified
Estimated total run time: 1 min 20 s

Benchmarking ex_rated ...
Benchmarking hammer ...
Benchmarking plug_attack ...
Benchmarking rate_limiter ...
Calculating statistics...
Formatting results...

Name                   ips        average  deviation         median         99th %
plug_attack        62.97 K       15.88 μs  ±1302.50%        0.76 μs       15.15 μs
rate_limiter       40.28 K       24.82 μs  ±1350.04%        2.40 μs        5.96 μs
ex_rated           12.15 K       82.32 μs  ±2168.09%        2.69 μs       82.59 μs
hammer              0.48 K     2073.13 μs     ±8.87%     2052.20 μs     2546.38 μs

Comparison:
plug_attack        62.97 K
rate_limiter       40.28 K - 1.56x slower +8.94 μs
ex_rated           12.15 K - 5.18x slower +66.44 μs
hammer              0.48 K - 130.54x slower +2057.25 μs

Extended statistics:

Name                 minimum        maximum    sample size                     mode
plug_attack          0.29 μs    64946.47 μs        78.53 M                  0.65 μs
rate_limiter         0.44 μs    67345.01 μs        45.74 M                  2.43 μs
ex_rated             1.04 μs   145371.67 μs        18.04 M                  2.62 μs
hammer               3.95 μs    11021.72 μs         1.45 M               2002.71 μs
prallel: 500
limit: 1
scale: 500
range: 200000

Operating System: Linux
CPU Information: AMD Ryzen 9 5900X 12-Core Processor
Number of Available Cores: 24
Available memory: 31.25 GB
Elixir 1.16.2
Erlang 26.1.2
JIT enabled: true

Benchmark suite executing with the following configuration:
warmup: 14 s
time: 6 s
memory time: 0 ns
reduction time: 0 ns
parallel: 500
inputs: none specified
Estimated total run time: 1 min 20 s

Benchmarking ex_rated ...
Benchmarking hammer ...
Benchmarking plug_attack ...
Benchmarking rate_limiter ...
Calculating statistics...
Formatting results...

Name                   ips        average  deviation         median         99th %
rate_limiter       65.69 K       15.22 μs  ±2927.19%        1.51 μs        3.16 μs
plug_attack        61.35 K       16.30 μs  ±1345.93%        1.01 μs        6.56 μs
ex_rated            3.03 K      330.53 μs  ±1289.70%       34.78 μs      106.29 μs
hammer              0.46 K     2158.70 μs     ±5.96%     2147.91 μs     2352.05 μs

Comparison:
rate_limiter       65.69 K
plug_attack        61.35 K - 1.07x slower +1.08 μs
ex_rated            3.03 K - 21.71x slower +315.31 μs
hammer              0.46 K - 141.80x slower +2143.47 μs

Extended statistics:

Name                 minimum        maximum    sample size                     mode
rate_limiter         0.39 μs   718925.12 μs        73.40 M                  1.44 μs
plug_attack          0.30 μs   273407.82 μs        69.32 M                  0.87 μs
ex_rated             1.29 μs    86136.17 μs         4.68 M                  2.65 μs
hammer            1706.89 μs     9269.00 μs         1.39 M               2144.25 μs
prallel: 500
limit: 1
scale: 500
range: 50000

Operating System: Linux
CPU Information: AMD Ryzen 9 5900X 12-Core Processor
Number of Available Cores: 24
Available memory: 31.25 GB
Elixir 1.16.2
Erlang 26.1.2
JIT enabled: true

Benchmark suite executing with the following configuration:
warmup: 14 s
time: 6 s
memory time: 0 ns
reduction time: 0 ns
parallel: 500
inputs: none specified
Estimated total run time: 1 min 20 s

Benchmarking ex_rated ...
Benchmarking hammer ...
Benchmarking plug_attack ...
Benchmarking rate_limiter ...
Calculating statistics...
Formatting results...

Name                   ips        average  deviation         median         99th %
rate_limiter       81.17 K       12.32 μs  ±3240.55%        1.15 μs        2.82 μs
plug_attack        57.75 K       17.32 μs  ±1288.36%        0.77 μs       45.10 μs
ex_rated            2.75 K      363.43 μs  ±1215.26%       42.54 μs      105.87 μs
hammer              0.48 K     2097.41 μs     ±7.20%     2086.81 μs     2302.32 μs

Comparison:
rate_limiter       81.17 K
plug_attack        57.75 K - 1.41x slower +5.00 μs
ex_rated            2.75 K - 29.50x slower +351.11 μs
hammer              0.48 K - 170.24x slower +2085.09 μs

Extended statistics:

Name                 minimum        maximum    sample size                     mode
rate_limiter         0.30 μs  1000701.13 μs        84.33 M                  1.11 μs
plug_attack          0.29 μs    64686.61 μs        73.98 M                  0.63 μs
ex_rated             1.34 μs    89880.72 μs         4.18 M                  2.43 μs
hammer            1686.25 μs     9022.78 μs         1.43 M               2071.24 μs
prallel: 500
limit: 1
scale: 500
range: 10000

Operating System: Linux
CPU Information: AMD Ryzen 9 5900X 12-Core Processor
Number of Available Cores: 24
Available memory: 31.25 GB
Elixir 1.16.2
Erlang 26.1.2
JIT enabled: true

Benchmark suite executing with the following configuration:
warmup: 14 s
time: 6 s
memory time: 0 ns
reduction time: 0 ns
parallel: 500
inputs: none specified
Estimated total run time: 1 min 20 s

Benchmarking ex_rated ...
Benchmarking hammer ...
Benchmarking plug_attack ...
Benchmarking rate_limiter ...
Calculating statistics...
Formatting results...

Name                   ips        average  deviation         median         99th %
rate_limiter       89.42 K       11.18 μs  ±2695.14%        1.04 μs        2.36 μs
plug_attack        68.37 K       14.63 μs  ±1642.32%        0.62 μs        7.40 μs
ex_rated            5.08 K      196.70 μs  ±1654.43%        2.56 μs       81.34 μs
hammer              0.49 K     2052.71 μs     ±6.72%     2028.54 μs     2401.94 μs

Comparison:
rate_limiter       89.42 K
plug_attack        68.37 K - 1.31x slower +3.44 μs
ex_rated            5.08 K - 17.59x slower +185.52 μs
hammer              0.49 K - 183.56x slower +2041.53 μs

Extended statistics:

Name                 minimum        maximum    sample size                     mode
rate_limiter         0.29 μs   723766.70 μs        88.64 M                     1 μs
plug_attack          0.29 μs   168532.24 μs        86.00 M                  0.59 μs
ex_rated             1.08 μs   165809.46 μs         7.79 M                  2.31 μs
hammer            1644.07 μs     7474.81 μs         1.46 M               1994.70 μs
```
