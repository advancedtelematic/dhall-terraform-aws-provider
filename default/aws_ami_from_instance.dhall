
let ebsBlockDevice = {}

let ephemeralBlockDevice = {}

let awsAmiFromInstance =
  { description = None Text
  , snapshot_without_reboot = None Bool
  , tags = None (List { mapKey : Text, mapValue : Text })
  , ebs_block_device = None (List (../dhall/aws_ami_from_instance.dhall).EbsBlockDevice)
  , ephemeral_block_device = None (List (../dhall/aws_ami_from_instance.dhall).EphemeralBlockDevice)
  }

in
{ awsAmiFromInstance = awsAmiFromInstance
}
