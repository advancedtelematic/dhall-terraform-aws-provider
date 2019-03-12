
let ParameterOptional =
  { apply_method : Optional Text }

let ParameterRequired =
  { name : Text
  , value : Text
  }
let Parameter = ParameterOptional //\\ ParameterRequired

let AwsDocdbClusterParameterGroupOptional =
  { description : Optional Text
  , name : Optional Text
  , name_prefix : Optional Text
  , tags : Optional (List { mapKey : Text, mapValue : Text })
  , parameter : Optional (List Parameter)
  }

let AwsDocdbClusterParameterGroupRequired =
  { family : Text }
let AwsDocdbClusterParameterGroup = AwsDocdbClusterParameterGroupOptional //\\ AwsDocdbClusterParameterGroupRequired

in
{ AwsDocdbClusterParameterGroupOptional = AwsDocdbClusterParameterGroupOptional
, AwsDocdbClusterParameterGroupRequired = AwsDocdbClusterParameterGroupRequired
, AwsDocdbClusterParameterGroup = AwsDocdbClusterParameterGroup
, ParameterOptional = ParameterOptional
, ParameterRequired = ParameterRequired
, Parameter = Parameter
}
