
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

let RuleOptional =
  { type: Optional Text
  , action: Optional Action
  , override_action: Optional OverrideAction
  }

let RuleRequired =
  { priority: Natural
  , rule_id: Text
  }
let Rule = RuleOptional //\\ RuleRequired

let AwsWafregionalWebAclOptional =
  { arn: Optional Text
  , logging_configuration: Optional LoggingConfiguration
  , rule: Optional (List Rule)
  }

let AwsWafregionalWebAclRequired =
  { metric_name: Text
  , name: Text
  , default_action: DefaultAction
  }
let AwsWafregionalWebAcl = AwsWafregionalWebAclOptional //\\ AwsWafregionalWebAclRequired

in
{ AwsWafregionalWebAclOptional = AwsWafregionalWebAclOptional
, AwsWafregionalWebAclRequired = AwsWafregionalWebAclRequired
, AwsWafregionalWebAcl = AwsWafregionalWebAcl
, RuleOptional = RuleOptional
, RuleRequired = RuleRequired
, Rule = Rule
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
