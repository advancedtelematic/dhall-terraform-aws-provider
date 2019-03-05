
let AwsSsmActivationOptional =
  { activation_code: Optional Text
  , description: Optional Text
  , expiration_date: Optional Text
  , expired: Optional Text
  , name: Optional Text
  , registration_count: Optional Natural
  , registration_limit: Optional Natural
  }

let AwsSsmActivationRequired =
  { iam_role: Text }
let AwsSsmActivation = AwsSsmActivationOptional //\\ AwsSsmActivationRequired

in
{ AwsSsmActivationOptional = AwsSsmActivationOptional
, AwsSsmActivationRequired = AwsSsmActivationRequired
, AwsSsmActivation = AwsSsmActivation
}
