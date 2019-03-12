
let AwsSsmActivationOptional =
  { description : Optional Text
  , expiration_date : Optional Text
  , name : Optional Text
  , registration_limit : Optional Natural
  }

let AwsSsmActivationRequired =
  { iam_role : Text }
let AwsSsmActivation = AwsSsmActivationOptional //\\ AwsSsmActivationRequired

in
{ AwsSsmActivationOptional = AwsSsmActivationOptional
, AwsSsmActivationRequired = AwsSsmActivationRequired
, AwsSsmActivation = AwsSsmActivation
}
