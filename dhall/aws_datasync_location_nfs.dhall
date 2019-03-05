
let OnPremConfigOptional = {}

let OnPremConfigRequired =
  { agent_arns: (List Text) }
let OnPremConfig = OnPremConfigOptional //\\ OnPremConfigRequired

let AwsDatasyncLocationNfsOptional =
  { arn: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , uri: Optional Text
  }

let AwsDatasyncLocationNfsRequired =
  { server_hostname: Text
  , subdirectory: Text
  , on_prem_config: OnPremConfig
  }
let AwsDatasyncLocationNfs = AwsDatasyncLocationNfsOptional //\\ AwsDatasyncLocationNfsRequired

in
{ AwsDatasyncLocationNfsOptional = AwsDatasyncLocationNfsOptional
, AwsDatasyncLocationNfsRequired = AwsDatasyncLocationNfsRequired
, AwsDatasyncLocationNfs = AwsDatasyncLocationNfs
, OnPremConfig = OnPremConfig
}
