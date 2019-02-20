#!/bin/bash

scp dist/amd64/bird dist/amd64/birdcl root@169.60.202.24:
scp dist/amd64/bird dist/amd64/birdcl root@169.60.202.26:
scp dist/amd64/bird dist/amd64/birdcl root@169.48.218.119:
scp dist/amd64/bird dist/amd64/birdcl root@169.47.107.172:

ssh root@169.60.202.24 -C "scp bird birdcl root@10.94.98.88:"
ssh root@169.60.202.24 -C "scp bird birdcl root@10.94.98.89:"
ssh root@169.60.202.24 -C "scp bird birdcl root@10.184.253.196:"
ssh root@169.60.202.24 -C "scp bird birdcl root@10.184.253.247:"

ssh root@169.60.202.24 -C "systemctl stop bird && sleep 5 && cp ./bird /usr/sbin/ && mkdir -p /usr/local/var/run/ && systemctl restart bird && sleep 2 && systemctl status bird"
ssh root@169.60.202.26 -C "systemctl stop bird && sleep 5 && cp ./bird /usr/sbin/ && mkdir -p /usr/local/var/run/ && systemctl restart bird && sleep 2 && systemctl status bird"
ssh root@169.48.218.119 -C "systemctl stop bird && sleep 5 && cp ./bird /usr/sbin/ && mkdir -p /usr/local/var/run/ && systemctl restart bird && sleep 2 && systemctl status bird"
ssh root@169.47.107.172 -C "systemctl stop bird && sleep 5 && cp ./bird /usr/sbin/ && mkdir -p /usr/local/var/run/ && systemctl restart bird && sleep 2 && systemctl status bird"

ssh root@169.60.202.24 -C "ssh 10.94.98.88 -C \"systemctl stop bird && sleep 5 && cp ./bird /usr/sbin/ && mkdir -p /usr/local/var/run/ && systemctl restart bird && sleep 2 && systemctl status bird\""
ssh root@169.60.202.24 -C "ssh 10.94.98.89 -C \"systemctl stop bird && sleep 5 && cp ./bird /usr/sbin/ && mkdir -p /usr/local/var/run/ && systemctl restart bird && sleep 2 && systemctl status bird\""
ssh root@169.60.202.24 -C "ssh 10.184.253.196 -C \"systemctl stop bird && sleep 5 && cp ./bird /usr/sbin/ && mkdir -p /usr/local/var/run/ && systemctl restart bird && sleep 2 && systemctl status bird\""
ssh root@169.60.202.24 -C "ssh 10.184.253.247 -C \"systemctl stop bird && sleep 5 && cp ./bird /usr/sbin/ && mkdir -p /usr/local/var/run/ && systemctl restart bird && sleep 2 && systemctl status bird\""
