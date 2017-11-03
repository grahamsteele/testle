#!/bin/sh

ssh -oBatchMode=yes $user@$host 'cd testle; git pull origin master' < /dev/null
