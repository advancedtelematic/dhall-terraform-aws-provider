let api = ../api/api.dhall
let AwsInstance = ../dhall/aws_instance.dhall
let default = ../default/aws_instance.dhall

let r = api.resource "aws_instance" AwsInstance.AwsInstance "foo"
  ( default.awsInstance
    /\
    { ami = "some-ami"
    , instance_type = "t2.medium"
    }
  )

in
{ resource =
  [ r ]
}
