function "aws-out" {
  id=$1
  aws ec2 get-console-output --instance-id $id --region us-east-1 | ruby -e "require 'json'; puts JSON.parse(STDIN.read)['Output']"
}
