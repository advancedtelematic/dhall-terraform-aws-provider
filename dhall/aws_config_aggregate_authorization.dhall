
let AwsConfigAggregateAuthorizationOptional =
  { arn: Optional Text }

let AwsConfigAggregateAuthorizationRequired =
  { account_id: Text
  , region: Text
  }
let AwsConfigAggregateAuthorization = AwsConfigAggregateAuthorizationOptional //\\ AwsConfigAggregateAuthorizationRequired

in
{ AwsConfigAggregateAuthorizationOptional = AwsConfigAggregateAuthorizationOptional
, AwsConfigAggregateAuthorizationRequired = AwsConfigAggregateAuthorizationRequired
, AwsConfigAggregateAuthorization = AwsConfigAggregateAuthorization
}
