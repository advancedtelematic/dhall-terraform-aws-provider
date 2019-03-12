
let ParameterOptional =
  { apply_method : Optional Text }

let ParameterRequired =
  { name : Text
  , value : Text
  }
let Parameter = ParameterOptional //\\ ParameterRequired

let AwsRdsClusterParameterGroupOptional =
  { description : Optional Text
  , name : Optional Text
  , name_prefix : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , parameter : Optional (List Parameter)
  }

let AwsRdsClusterParameterGroupRequired =
  { family : Text }
let AwsRdsClusterParameterGroup = AwsRdsClusterParameterGroupOptional //\\ AwsRdsClusterParameterGroupRequired

in
{ AwsRdsClusterParameterGroupOptional = AwsRdsClusterParameterGroupOptional
, AwsRdsClusterParameterGroupRequired = AwsRdsClusterParameterGroupRequired
, AwsRdsClusterParameterGroup = AwsRdsClusterParameterGroup
, ParameterOptional = ParameterOptional
, ParameterRequired = ParameterRequired
, Parameter = Parameter
}
