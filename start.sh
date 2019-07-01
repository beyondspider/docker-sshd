#!/bin/bash
docker run -u root -d -p 10022:22 --name sshd beyondspider/sshd:latest
