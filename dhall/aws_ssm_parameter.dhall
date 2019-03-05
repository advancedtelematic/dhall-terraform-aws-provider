
let AwsSsmParameterOptional =
  { allowed_pattern: Optional Text
  , arn: Optional Text
  , description: Optional Text
  , key_id: Optional Text
  , overwrite: Optional Bool
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsSsmParameterRequired =
  { name: Text
  , type: Text
  , value: Text
  }
let AwsSsmParameter = AwsSsmParameterOptional //\\ AwsSsmParameterRequired

in
{ AwsSsmParameterOptional = AwsSsmParameterOptional
, AwsSsmParameterRequired = AwsSsmParameterRequired
, AwsSsmParameter = AwsSsmParameter
}
