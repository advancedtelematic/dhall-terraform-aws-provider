
let AwsDatasyncAgentOptional =
  { activation_key: Optional Text
  , arn: Optional Text
  , ip_address: Optional Text
  , name: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsDatasyncAgentRequired = {}
let AwsDatasyncAgent = AwsDatasyncAgentOptional //\\ AwsDatasyncAgentRequired

in
{ AwsDatasyncAgentOptional = AwsDatasyncAgentOptional
, AwsDatasyncAgentRequired = AwsDatasyncAgentRequired
, AwsDatasyncAgent = AwsDatasyncAgent
}
