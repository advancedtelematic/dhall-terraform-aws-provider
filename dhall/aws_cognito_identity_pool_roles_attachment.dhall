
let MappingRuleOptional = {}

let MappingRuleRequired =
  { claim: Text
  , match_type: Text
  , role_arn: Text
  , value: Text
  }
let MappingRule = MappingRuleOptional //\\ MappingRuleRequired

let RoleMappingOptional =
  { ambiguous_role_resolution: Optional Text
  , mapping_rule: Optional (List MappingRule)
  }

let RoleMappingRequired =
  { identity_provider: Text
  , type: Text
  }
let RoleMapping = RoleMappingOptional //\\ RoleMappingRequired

let RolesOptional =
  { authenticated: Optional Text
  , unauthenticated: Optional Text
  }

let RolesRequired = {}
let Roles = RolesOptional //\\ RolesRequired

let AwsCognitoIdentityPoolRolesAttachmentOptional =
  { role_mapping: Optional (List RoleMapping) }

let AwsCognitoIdentityPoolRolesAttachmentRequired =
  { identity_pool_id: Text
  , roles: Roles
  }
let AwsCognitoIdentityPoolRolesAttachment = AwsCognitoIdentityPoolRolesAttachmentOptional //\\ AwsCognitoIdentityPoolRolesAttachmentRequired

in
{ AwsCognitoIdentityPoolRolesAttachmentOptional = AwsCognitoIdentityPoolRolesAttachmentOptional
, AwsCognitoIdentityPoolRolesAttachmentRequired = AwsCognitoIdentityPoolRolesAttachmentRequired
, AwsCognitoIdentityPoolRolesAttachment = AwsCognitoIdentityPoolRolesAttachment
, RolesOptional = RolesOptional
, RolesRequired = RolesRequired
, Roles = Roles
, RoleMappingOptional = RoleMappingOptional
, RoleMappingRequired = RoleMappingRequired
, RoleMapping = RoleMapping
, MappingRule = MappingRule
}
