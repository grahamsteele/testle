#!/bin/sh

echo 'ec2-75-101-228-88.compute-1.amazonaws.com,75.101.228.88 ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBMo1YQ4iMVeV0TyM+HXmuTbvfP5vW9uV414r4eQZ4/tDDR5zW38Dc31K+ueLKYc5L7CH1X/myk7Vzv04lArTx3A=' >> ~/.ssh/known_hosts
ssh -oBatchMode=yes $user@$host 'cd testle; git pull origin master' < /dev/null
