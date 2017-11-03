#!/bin/sh

ssh-keyscan for.theverywedge.com >> ~/.ssh/known_hosts
ssh -oBatchMode=yes $user@$host 'cd testle; git pull origin master' < /dev/null
