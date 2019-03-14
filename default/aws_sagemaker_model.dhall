
let container =
  { container_hostname = None Text
  , environment = None (List { mapKey : Text, mapValue : Text })
  , model_data_url = None Text
  }

let primaryContainer =
  { container_hostname = None Text
  , environment = None (List { mapKey : Text, mapValue : Text })
  , model_data_url = None Text
  }

let vpcConfig = {}

let awsSagemakerModel =
  { enable_network_isolation = None Bool
  , name = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , container = None (List (../dhall/aws_sagemaker_model.dhall).Container)
  , primary_container = None (../dhall/aws_sagemaker_model.dhall).PrimaryContainer
  , vpc_config = None (../dhall/aws_sagemaker_model.dhall).VpcConfig
  }

in
{ awsSagemakerModel = awsSagemakerModel
, primaryContainer = primaryContainer
, container = container
}
