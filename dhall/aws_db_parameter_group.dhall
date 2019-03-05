
let ParameterOptional =
  { apply_method: Optional Text }

let ParameterRequired =
  { name: Text
  , value: Text
  }
let Parameter = ParameterOptional //\\ ParameterRequired

let AwsDbParameterGroupOptional =
  { arn: Optional Text
  , description: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , parameter: Optional (List Parameter)
  }

let AwsDbParameterGroupRequired =
  { family: Text }
let AwsDbParameterGroup = AwsDbParameterGroupOptional //\\ AwsDbParameterGroupRequired

in
{ AwsDbParameterGroupOptional = AwsDbParameterGroupOptional
, AwsDbParameterGroupRequired = AwsDbParameterGroupRequired
, AwsDbParameterGroup = AwsDbParameterGroup
, ParameterOptional = ParameterOptional
, ParameterRequired = ParameterRequired
, Parameter = Parameter
}
