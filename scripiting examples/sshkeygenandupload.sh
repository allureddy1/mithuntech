#!/bin/bash      
#title           : 
#description     :
#author		     :Mithun Reddy Lacchannagari
#date            :08112012
#version         :2.0    
#usage		     :sh hello.sh
#CopyRights      : Mithun Technologies
#Contact         : 9980923226

echo "Enter your GitHub Personal Access Token:"
read token
echo $token >token.txt
cat token.txt
cat ~/.ssh/id_rsa.pub
if [ $? -eq 0 ]
then
	echo "SSH Keys are already present..."
else	
echo "SSH Keys are are not present..., Creating using ssh-keygen command"
ssh-keygen -t rsa
echo "Key successfully generated"
fi
sshkey=`cat ~/.ssh/id_rsa.pub`

if [ $? -eq 0 ]
then
echo "Copying the key to GitHub account"
curl -X POST -H "Content-type: application/json" -d "{\"title\": \"SSHKEY\",\"key\": \"$sshkey\"}" "https://api.github.com/user/keys?access_token=$token"
if [ $? -eq 0 ]
then 
echo "Successfully copied the token to GitHub"
exit 0
else
echo "Failed"
exit 1
fi
else
echo "Failure in generating the key"
exit 1
fi