#!/bin/bash
set -ex
host=81.163.31.62

if ssh root@$host 'docker -v &>/dev/null' ; then
  echo already prepared
else
  ssh root@$host apt update
  ssh root@$host apt install -y docker docker.io git
  ssh root@$host git clone https://github.com/izeal/my_roda_app /app
  echo prepare is done.
fi

