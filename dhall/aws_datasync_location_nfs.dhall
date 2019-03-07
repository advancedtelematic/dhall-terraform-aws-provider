
let OnPremConfigOptional = {}

let OnPremConfigRequired =
  { agent_arns: (List Text) }
let OnPremConfig = OnPremConfigOptional //\\ OnPremConfigRequired

let AwsDatasyncLocationNfsOptional =
  { tags: Optional (List { mapKey : Text, mapValue : Text }) }

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
