
let mappingRule = {}

let roleMapping =
  { ambiguous_role_resolution = None Text
  , mapping_rule = None (List (../dhall/aws_cognito_identity_pool_roles_attachment.dhall).MappingRule)
  }

let roles =
  { authenticated = None Text
  , unauthenticated = None Text
  }

let awsCognitoIdentityPoolRolesAttachment =
  { role_mapping = None (List (../dhall/aws_cognito_identity_pool_roles_attachment.dhall).RoleMapping) }

in
{ awsCognitoIdentityPoolRolesAttachment = awsCognitoIdentityPoolRolesAttachment
, roles = roles
, roleMapping = roleMapping
}
