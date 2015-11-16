#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
inst_id=$(curl http://169.254.169.254/latest/meta-data/instance-id)
update=$(date +'%Y-%m-%d %H:%M')

sed -i "s/%inst_id%/${inst_id}/" ${DIR}/../index.html
sed -i "s/%update%/${update}/" ${DIR}/../index.html

sleep 5
