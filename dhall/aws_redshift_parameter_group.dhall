
let ParameterOptional = {}

let ParameterRequired =
  { name : Text
  , value : Text
  }
let Parameter = ParameterOptional //\\ ParameterRequired

let AwsRedshiftParameterGroupOptional =
  { description : Optional Text
  , parameter : Optional (List Parameter)
  }

let AwsRedshiftParameterGroupRequired =
  { family : Text
  , name : Text
  }
let AwsRedshiftParameterGroup = AwsRedshiftParameterGroupOptional //\\ AwsRedshiftParameterGroupRequired

in
{ AwsRedshiftParameterGroupOptional = AwsRedshiftParameterGroupOptional
, AwsRedshiftParameterGroupRequired = AwsRedshiftParameterGroupRequired
, AwsRedshiftParameterGroup = AwsRedshiftParameterGroup
, Parameter = Parameter
}
