
let ContainerOptional =
  { container_hostname : Optional Text
  , environment : Optional (List { mapKey : Text, mapValue : Text })
  , model_data_url : Optional Text
  }

let ContainerRequired =
  { image : Text }
let Container = ContainerOptional //\\ ContainerRequired

let PrimaryContainerOptional =
  { container_hostname : Optional Text
  , environment : Optional (List { mapKey : Text, mapValue : Text })
  , model_data_url : Optional Text
  }

let PrimaryContainerRequired =
  { image : Text }
let PrimaryContainer = PrimaryContainerOptional //\\ PrimaryContainerRequired

let VpcConfigOptional = {}

let VpcConfigRequired =
  { security_group_ids : (List Text)
  , subnets : (List Text)
  }
let VpcConfig = VpcConfigOptional //\\ VpcConfigRequired

let AwsSagemakerModelOptional =
  { enable_network_isolation : Optional Bool
  , name : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , container : Optional (List Container)
  , primary_container : Optional PrimaryContainer
  , vpc_config : Optional VpcConfig
  }

let AwsSagemakerModelRequired =
  { execution_role_arn : Text }
let AwsSagemakerModel = AwsSagemakerModelOptional //\\ AwsSagemakerModelRequired

in
{ AwsSagemakerModelOptional = AwsSagemakerModelOptional
, AwsSagemakerModelRequired = AwsSagemakerModelRequired
, AwsSagemakerModel = AwsSagemakerModel
, VpcConfig = VpcConfig
, PrimaryContainerOptional = PrimaryContainerOptional
, PrimaryContainerRequired = PrimaryContainerRequired
, PrimaryContainer = PrimaryContainer
, ContainerOptional = ContainerOptional
, ContainerRequired = ContainerRequired
, Container = Container
}
