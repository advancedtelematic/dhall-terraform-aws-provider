
let AwsEfsMountTargetOptional =
  { ip_address: Optional Text
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
