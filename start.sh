#!/bin/bash
#docker run -u root -d --env ROOT_PASS=root -p 10022:22 --name sshd beyondspider/sshd:latest
docker run -u root -d -p 10022:22 --name sshd beyondspider/sshd:latest
