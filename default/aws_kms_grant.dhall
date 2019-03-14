
let constraints =
  { encryption_context_equals = None (List { mapKey : Text, mapValue : Text })
  , encryption_context_subset = None (List { mapKey : Text, mapValue : Text })
  }

let awsKmsGrant =
  { grant_creation_tokens = None (List Text)
  , name = None Text
  , retire_on_delete = None Bool
  , retiring_principal = None Text
  , constraints = None (List (../dhall/aws_kms_grant.dhall).Constraints)
  }

in
{ awsKmsGrant = awsKmsGrant
, constraints = constraints
}
