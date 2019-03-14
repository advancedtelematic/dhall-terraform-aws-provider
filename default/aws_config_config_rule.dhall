
let scope =
  { compliance_resource_id = None Text
  , compliance_resource_types = None (List Text)
  , tag_key = None Text
  , tag_value = None Text
  }

let sourceDetail =
  { event_source = None Text
  , maximum_execution_frequency = None Text
  , message_type = None Text
  }

let source =
  { source_detail = None (List (../dhall/aws_config_config_rule.dhall).SourceDetail) }

let awsConfigConfigRule =
  { description = None Text
  , input_parameters = None Text
  , maximum_execution_frequency = None Text
  , scope = None (../dhall/aws_config_config_rule.dhall).Scope
  }

in
{ awsConfigConfigRule = awsConfigConfigRule
, source = source
, sourceDetail = sourceDetail
, scope = scope
}
