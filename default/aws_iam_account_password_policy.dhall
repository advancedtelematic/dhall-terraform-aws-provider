
let awsIamAccountPasswordPolicy =
  { allow_users_to_change_password = None Bool
  , hard_expiry = None Bool
  , max_password_age = None Natural
  , minimum_password_length = None Natural
  , password_reuse_prevention = None Natural
  , require_lowercase_characters = None Bool
  , require_numbers = None Bool
  , require_symbols = None Bool
  , require_uppercase_characters = None Bool
  }

in
{ awsIamAccountPasswordPolicy = awsIamAccountPasswordPolicy
}
