
let defaultAction = {}

let fieldToMatch =
  { data = None Text }

let redactedFields = {}

let loggingConfiguration =
  { redacted_fields = None (../dhall/aws_wafregional_web_acl.dhall).RedactedFields }

let action = {}

let overrideAction = {}

let rule =
  { type = None Text
  , action = None (../dhall/aws_wafregional_web_acl.dhall).Action
  , override_action = None (../dhall/aws_wafregional_web_acl.dhall).OverrideAction
  }

let awsWafregionalWebAcl =
  { logging_configuration = None (../dhall/aws_wafregional_web_acl.dhall).LoggingConfiguration
  , rule = None (List (../dhall/aws_wafregional_web_acl.dhall).Rule)
  }

in
{ awsWafregionalWebAcl = awsWafregionalWebAcl
, rule = rule
, loggingConfiguration = loggingConfiguration
, fieldToMatch = fieldToMatch
}
