#!/bin/bash

ssh-keyscan -v sl1h1 sl1w1 sl1w2 sl1w3 sl1w4 >> ~/.ssh/known_hosts

ssh-copy-id sl1h1
ssh-copy-id sl1w1
ssh-copy-id sl1w2
ssh-copy-id sl1w3
ssh-copy-id sl1w4
