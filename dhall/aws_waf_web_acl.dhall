
let DefaultActionOptional = {}

let DefaultActionRequired =
  { type: Text }
let DefaultAction = DefaultActionOptional //\\ DefaultActionRequired

let FieldToMatchOptional =
  { data: Optional Text }

let FieldToMatchRequired =
  { type: Text }
let FieldToMatch = FieldToMatchOptional //\\ FieldToMatchRequired

let RedactedFieldsOptional = {}

let RedactedFieldsRequired =
  { field_to_match: List FieldToMatch }
let RedactedFields = RedactedFieldsOptional //\\ RedactedFieldsRequired

let LoggingConfigurationOptional =
  { redacted_fields: Optional RedactedFields }

let LoggingConfigurationRequired =
  { log_destination: Text }
let LoggingConfiguration = LoggingConfigurationOptional //\\ LoggingConfigurationRequired

let ActionOptional = {}

let ActionRequired =
  { type: Text }
let Action = ActionOptional //\\ ActionRequired

let OverrideActionOptional = {}

let OverrideActionRequired =
  { type: Text }
let OverrideAction = OverrideActionOptional //\\ OverrideActionRequired

let RulesOptional =
  { type: Optional Text
  , action: Optional Action
  , override_action: Optional OverrideAction
  }

let RulesRequired =
  { priority: Natural
  , rule_id: Text
  }
let Rules = RulesOptional //\\ RulesRequired

let AwsWafWebAclOptional =
  { logging_configuration: Optional LoggingConfiguration
  , rules: Optional (List Rules)
  }

let AwsWafWebAclRequired =
  { metric_name: Text
  , name: Text
  , default_action: DefaultAction
  }
let AwsWafWebAcl = AwsWafWebAclOptional //\\ AwsWafWebAclRequired

in
{ AwsWafWebAclOptional = AwsWafWebAclOptional
, AwsWafWebAclRequired = AwsWafWebAclRequired
, AwsWafWebAcl = AwsWafWebAcl
, RulesOptional = RulesOptional
, RulesRequired = RulesRequired
, Rules = Rules
, OverrideAction = OverrideAction
, Action = Action
, LoggingConfigurationOptional = LoggingConfigurationOptional
, LoggingConfigurationRequired = LoggingConfigurationRequired
, LoggingConfiguration = LoggingConfiguration
, RedactedFields = RedactedFields
, FieldToMatchOptional = FieldToMatchOptional
, FieldToMatchRequired = FieldToMatchRequired
, FieldToMatch = FieldToMatch
, DefaultAction = DefaultAction
}
