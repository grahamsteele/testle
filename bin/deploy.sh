#!/bin/sh

ssh-keyscan $host >> ~/.ssh/known_hosts
ssh -oBatchMode=yes $user@$host 'cd testle; git pull origin master'
