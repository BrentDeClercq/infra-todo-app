#!/bin/bash
set -euo pipefail

cd app || exit
docker build -t getting-started .
docker run -dp 3000:3000 --name todorunning getting-started
docker ps -a 