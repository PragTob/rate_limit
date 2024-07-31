#!/usr/bin/env bash

MIX_ENV=bench LIMIT=1 SCALE=5000 RANGE=200000 PARALLEL=600 mix run bench/basic.exs
MIX_ENV=bench LIMIT=1 SCALE=5000 RANGE=200000 PARALLEL=500 mix run bench/basic.exs
MIX_ENV=bench LIMIT=1 SCALE=5000 RANGE=100000 PARALLEL=600 mix run bench/basic.exs
MIX_ENV=bench LIMIT=1 SCALE=5000 RANGE=100000 PARALLEL=500 mix run bench/basic.exs
MIX_ENV=bench LIMIT=1 SCALE=5000 RANGE=50000 PARALLEL=500 mix run bench/basic.exs
MIX_ENV=bench LIMIT=1 SCALE=500 RANGE=200000 PARALLEL=500 mix run bench/basic.exs
MIX_ENV=bench LIMIT=1 SCALE=500 RANGE=50000 PARALLEL=500 mix run bench/basic.exs
MIX_ENV=bench LIMIT=1 SCALE=500 RANGE=10000 PARALLEL=500 mix run bench/basic.exs
