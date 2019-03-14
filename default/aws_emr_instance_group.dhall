
let ebsConfig =
  { iops = None Natural
  , volumes_per_instance = None Natural
  }

let awsEmrInstanceGroup =
  { ebs_optimized = None Bool
  , instance_count = None Natural
  , name = None Text
  , ebs_config = None (List (../dhall/aws_emr_instance_group.dhall).EbsConfig)
  }

in
{ awsEmrInstanceGroup = awsEmrInstanceGroup
, ebsConfig = ebsConfig
}
