echo "Logging into Sandbox Salesforce Org"
mkdir keys
echo $SANDBOX_CERT_KEY | base64 -di > keys/server.key

echo "Authenticating org"
#sfdx force:auth:jwt:grant --clientid $SANDBOX_APP_KEY --jwtkeyfile keys/server.key --username $SANDBOX_USERNAME --setdefaultdevhubusername -a DevHub --instanceurl https://test.salesforce.com
sfdx force:auth:jwt:grant --clientid $SANDBOX_APP_KEY --jwtkeyfile keys/server.key --username $SANDBOX_USERNAME --instanceurl https://test.salesforce.com

echo "Alias Org"
echo $DevHub
echo "Alias Org"
echo DevHub
echo "Alias Org"