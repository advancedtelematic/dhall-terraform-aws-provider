
let ParametersOptional = {}

let ParametersRequired =
  { name : Text
  , value : Text
  }
let Parameters = ParametersOptional //\\ ParametersRequired

let AwsDaxParameterGroupOptional =
  { description : Optional Text
  , parameters : Optional (List Parameters)
  }

let AwsDaxParameterGroupRequired =
  { name : Text }
let AwsDaxParameterGroup = AwsDaxParameterGroupOptional //\\ AwsDaxParameterGroupRequired

in
{ AwsDaxParameterGroupOptional = AwsDaxParameterGroupOptional
, AwsDaxParameterGroupRequired = AwsDaxParameterGroupRequired
, AwsDaxParameterGroup = AwsDaxParameterGroup
, Parameters = Parameters
}
