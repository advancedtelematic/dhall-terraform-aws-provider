
let ParameterOptional =
  { apply_method: Optional Text }

let ParameterRequired =
  { name: Text
  , value: Text
  }
let Parameter = ParameterOptional //\\ ParameterRequired

let AwsNeptuneClusterParameterGroupOptional =
  { arn: Optional Text
  , description: Optional Text
  , name: Optional Text
  , name_prefix: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , parameter: Optional (List Parameter)
  }

let AwsNeptuneClusterParameterGroupRequired =
  { family: Text }
let AwsNeptuneClusterParameterGroup = AwsNeptuneClusterParameterGroupOptional //\\ AwsNeptuneClusterParameterGroupRequired

in
{ AwsNeptuneClusterParameterGroupOptional = AwsNeptuneClusterParameterGroupOptional
, AwsNeptuneClusterParameterGroupRequired = AwsNeptuneClusterParameterGroupRequired
, AwsNeptuneClusterParameterGroup = AwsNeptuneClusterParameterGroup
, ParameterOptional = ParameterOptional
, ParameterRequired = ParameterRequired
, Parameter = Parameter
}
