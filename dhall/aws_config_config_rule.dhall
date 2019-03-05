
let ScopeOptional =
  { compliance_resource_id: Optional Text
  , compliance_resource_types: Optional (List Text)
  , tag_key: Optional Text
  , tag_value: Optional Text
  }

let ScopeRequired = {}
let Scope = ScopeOptional //\\ ScopeRequired

let SourceDetailOptional =
  { event_source: Optional Text
  , maximum_execution_frequency: Optional Text
  , message_type: Optional Text
  }

let SourceDetailRequired = {}
let SourceDetail = SourceDetailOptional //\\ SourceDetailRequired

let SourceOptional =
  { source_detail: Optional (List SourceDetail) }

let SourceRequired =
  { owner: Text
  , source_identifier: Text
  }
let Source = SourceOptional //\\ SourceRequired

let AwsConfigConfigRuleOptional =
  { arn: Optional Text
  , description: Optional Text
  , input_parameters: Optional Text
  , maximum_execution_frequency: Optional Text
  , rule_id: Optional Text
  , scope: Optional Scope
  }

let AwsConfigConfigRuleRequired =
  { name: Text
  , source: Source
  }
let AwsConfigConfigRule = AwsConfigConfigRuleOptional //\\ AwsConfigConfigRuleRequired

in
{ AwsConfigConfigRuleOptional = AwsConfigConfigRuleOptional
, AwsConfigConfigRuleRequired = AwsConfigConfigRuleRequired
, AwsConfigConfigRule = AwsConfigConfigRule
, SourceOptional = SourceOptional
, SourceRequired = SourceRequired
, Source = Source
, SourceDetailOptional = SourceDetailOptional
, SourceDetailRequired = SourceDetailRequired
, SourceDetail = SourceDetail
, ScopeOptional = ScopeOptional
, ScopeRequired = ScopeRequired
, Scope = Scope
}
