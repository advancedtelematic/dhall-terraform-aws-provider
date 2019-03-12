
let ConstraintsOptional =
  { encryption_context_equals : Optional (List { mapKey : Text, mapValue : Text })
  , encryption_context_subset : Optional (List { mapKey : Text, mapValue : Text })
  }

let ConstraintsRequired = {}
let Constraints = ConstraintsOptional //\\ ConstraintsRequired

let AwsKmsGrantOptional =
  { grant_creation_tokens : Optional (List Text)
  , name : Optional Text
  , retire_on_delete : Optional Bool
  , retiring_principal : Optional Text
  , constraints : Optional (List Constraints)
  }

let AwsKmsGrantRequired =
  { grantee_principal : Text
  , key_id : Text
  , operations : (List Text)
  }
let AwsKmsGrant = AwsKmsGrantOptional //\\ AwsKmsGrantRequired

in
{ AwsKmsGrantOptional = AwsKmsGrantOptional
, AwsKmsGrantRequired = AwsKmsGrantRequired
, AwsKmsGrant = AwsKmsGrant
, ConstraintsOptional = ConstraintsOptional
, ConstraintsRequired = ConstraintsRequired
, Constraints = Constraints
}
