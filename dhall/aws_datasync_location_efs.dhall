
let Ec2ConfigOptional = {}

let Ec2ConfigRequired =
  { security_group_arns: (List Text)
  , subnet_arn: Text
  }
let Ec2Config = Ec2ConfigOptional //\\ Ec2ConfigRequired

let AwsDatasyncLocationEfsOptional =
  { subdirectory: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDatasyncLocationEfsRequired =
  { efs_file_system_arn: Text
  , ec2_config: Ec2Config
  }
let AwsDatasyncLocationEfs = AwsDatasyncLocationEfsOptional //\\ AwsDatasyncLocationEfsRequired

in
{ AwsDatasyncLocationEfsOptional = AwsDatasyncLocationEfsOptional
, AwsDatasyncLocationEfsRequired = AwsDatasyncLocationEfsRequired
, AwsDatasyncLocationEfs = AwsDatasyncLocationEfs
, Ec2Config = Ec2Config
}
