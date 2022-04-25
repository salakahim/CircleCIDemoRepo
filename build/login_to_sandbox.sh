echo "Logging into Sandbox Salesforce Org"
mkdir keys
echo $SANDBOX_CERT_KEY | base64 -di > keys/server.key

echo "Server folder"
ls ./keys
cat ./keys/server.key

echo "SANDBOX_CERT_KEY"
echo $SANDBOX_CERT_KEY

echo "SANDBOX_APP_KEY"
echo $SANDBOX_APP_KEY

echo "SANDBOX_USERNAME"
echo $SANDBOX_USERNAME


echo "Authenticating org"
sfdx force:auth:jwt:grant --clientid $SANDBOX_APP_KEY --jwtkeyfile keys/server.key --username $SANDBOX_USERNAME --setdefaultdevhubusername -a DevHub