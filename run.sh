# IMPORTANT: Replace the KeyName value with your Keyname to run the command in first command
# Run This File 

stackName=$1

aws cloudformation create-stack --stack-name "${stackName}" \
--template-body file://EC2CF.yml  --parameters \
ParameterKey=KeyName,ParameterValue=jenkins \
ParameterKey=VpcId,ParameterValue=vpc-08797f72 \
ParameterKey=SubnetIdOne,ParameterValue=subnet-bfe10bd9 \
ParameterKey=SubnetIdTwo,ParameterValue=subnet-e04bbac1 \
--capabilities CAPABILITY_NAMED_IAM

sleep 300

echo 'Listing the resources created within the stack'

chmod 777 buildEC2.sh

sh buildEC2.sh "${stackName}" > output.json

echo 'Kindly check output.json file for complete stack details'