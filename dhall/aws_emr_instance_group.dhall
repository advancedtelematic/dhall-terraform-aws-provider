
let EbsConfigOptional =
  { iops : Optional Natural
  , volumes_per_instance : Optional Natural
  }

let EbsConfigRequired =
  { size : Natural
  , type : Text
  }
let EbsConfig = EbsConfigOptional //\\ EbsConfigRequired

let AwsEmrInstanceGroupOptional =
  { ebs_optimized : Optional Bool
  , instance_count : Optional Natural
  , name : Optional Text
  , ebs_config : Optional (List EbsConfig)
  }

let AwsEmrInstanceGroupRequired =
  { cluster_id : Text
  , instance_type : Text
  }
let AwsEmrInstanceGroup = AwsEmrInstanceGroupOptional //\\ AwsEmrInstanceGroupRequired

in
{ AwsEmrInstanceGroupOptional = AwsEmrInstanceGroupOptional
, AwsEmrInstanceGroupRequired = AwsEmrInstanceGroupRequired
, AwsEmrInstanceGroup = AwsEmrInstanceGroup
, EbsConfigOptional = EbsConfigOptional
, EbsConfigRequired = EbsConfigRequired
, EbsConfig = EbsConfig
}
