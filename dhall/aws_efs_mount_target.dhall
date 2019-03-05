
let AwsEfsMountTargetOptional =
  { dns_name: Optional Text
  , file_system_arn: Optional Text
  , ip_address: Optional Text
  , network_interface_id: Optional Text
  , security_groups: Optional (List Text)
  }

let AwsEfsMountTargetRequired =
  { file_system_id: Text
  , subnet_id: Text
  }
let AwsEfsMountTarget = AwsEfsMountTargetOptional //\\ AwsEfsMountTargetRequired

in
{ AwsEfsMountTargetOptional = AwsEfsMountTargetOptional
, AwsEfsMountTargetRequired = AwsEfsMountTargetRequired
, AwsEfsMountTarget = AwsEfsMountTarget
}
