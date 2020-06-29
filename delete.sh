stackName=$1

aws cloudformation delete-stack --stack-name  "${stackName}"

