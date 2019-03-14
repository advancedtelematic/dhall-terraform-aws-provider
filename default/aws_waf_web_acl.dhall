
let defaultAction = {}

let fieldToMatch =
  { data = None Text }

let redactedFields = {}

let loggingConfiguration =
  { redacted_fields = None (../dhall/aws_waf_web_acl.dhall).RedactedFields }

let action = {}

let overrideAction = {}

let rules =
  { type = None Text
  , action = None (../dhall/aws_waf_web_acl.dhall).Action
  , override_action = None (../dhall/aws_waf_web_acl.dhall).OverrideAction
  }

let awsWafWebAcl =
  { logging_configuration = None (../dhall/aws_waf_web_acl.dhall).LoggingConfiguration
  , rules = None (List (../dhall/aws_waf_web_acl.dhall).Rules)
  }

in
{ awsWafWebAcl = awsWafWebAcl
, rules = rules
, loggingConfiguration = loggingConfiguration
, fieldToMatch = fieldToMatch
}
