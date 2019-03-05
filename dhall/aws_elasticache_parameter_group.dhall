
let ParameterOptional = {}

let ParameterRequired =
  { name: Text
  , value: Text
  }
let Parameter = ParameterOptional //\\ ParameterRequired

let AwsElasticacheParameterGroupOptional =
  { description: Optional Text
  , parameter: Optional (List Parameter)
  }

let AwsElasticacheParameterGroupRequired =
  { family: Text
  , name: Text
  }
let AwsElasticacheParameterGroup = AwsElasticacheParameterGroupOptional //\\ AwsElasticacheParameterGroupRequired

in
{ AwsElasticacheParameterGroupOptional = AwsElasticacheParameterGroupOptional
, AwsElasticacheParameterGroupRequired = AwsElasticacheParameterGroupRequired
, AwsElasticacheParameterGroup = AwsElasticacheParameterGroup
, Parameter = Parameter
}
