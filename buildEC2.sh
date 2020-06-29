stackName=$1

aws cloudformation describe-stack-resources --stack-name "${stackName}"
