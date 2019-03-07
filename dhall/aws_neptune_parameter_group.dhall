
let ParameterOptional =
  { apply_method: Optional Text }

let ParameterRequired =
  { name: Text
  , value: Text
  }
let Parameter = ParameterOptional //\\ ParameterRequired

let AwsNeptuneParameterGroupOptional =
  { description: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , parameter: Optional (List Parameter)
  }

let AwsNeptuneParameterGroupRequired =
  { family: Text
  , name: Text
  }
let AwsNeptuneParameterGroup = AwsNeptuneParameterGroupOptional //\\ AwsNeptuneParameterGroupRequired

in
{ AwsNeptuneParameterGroupOptional = AwsNeptuneParameterGroupOptional
, AwsNeptuneParameterGroupRequired = AwsNeptuneParameterGroupRequired
, AwsNeptuneParameterGroup = AwsNeptuneParameterGroup
, ParameterOptional = ParameterOptional
, ParameterRequired = ParameterRequired
, Parameter = Parameter
}
