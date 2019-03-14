
let ebsBlockDevice = {}

let ephemeralBlockDevice = {}

let awsAmiCopy =
  { description = None Text
  , encrypted = None Bool
  , kms_key_id = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , ebs_block_device = None (List (../dhall/aws_ami_copy.dhall).EbsBlockDevice)
  , ephemeral_block_device = None (List (../dhall/aws_ami_copy.dhall).EphemeralBlockDevice)
  }

in
{ awsAmiCopy = awsAmiCopy
}
