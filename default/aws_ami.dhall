
let ebsBlockDevice =
  { delete_on_termination = None Bool
  , encrypted = None Bool
  , iops = None Natural
  , snapshot_id = None Text
  , volume_size = None Natural
  , volume_type = None Text
  }

let ephemeralBlockDevice = {}

let awsAmi =
  { architecture = None Text
  , description = None Text
  , ena_support = None Bool
  , image_location = None Text
  , kernel_id = None Text
  , ramdisk_id = None Text
  , root_device_name = None Text
  , sriov_net_support = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , virtualization_type = None Text
  , ebs_block_device = None (List (../dhall/aws_ami.dhall).EbsBlockDevice)
  , ephemeral_block_device = None (List (../dhall/aws_ami.dhall).EphemeralBlockDevice)
  }

in
{ awsAmi = awsAmi
, ebsBlockDevice = ebsBlockDevice
}
