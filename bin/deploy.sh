#!/bin/sh

echo '-----BEGIN RSA PRIVATE KEY-----' > temp.key
echo $key | sed 's/.*- //' | sed 's/ -.*$//' | tr ' ' '\n' >> temp.key
echo '-----END RSA PRIVATE KEY-----' >> temp.key
chmod 600 temp.key

ssh -i temp.key $user@$host 'cd testle; git pull origin master' < /dev/null

rm temp.key
echo wedgely greetings!
