
let AwsCognitoUserGroupOptional =
  { description: Optional Text
  , precedence: Optional Natural
  , role_arn: Optional Text
  }

let AwsCognitoUserGroupRequired =
  { name: Text
  , user_pool_id: Text
  }
let AwsCognitoUserGroup = AwsCognitoUserGroupOptional //\\ AwsCognitoUserGroupRequired

in
{ AwsCognitoUserGroupOptional = AwsCognitoUserGroupOptional
, AwsCognitoUserGroupRequired = AwsCognitoUserGroupRequired
, AwsCognitoUserGroup = AwsCognitoUserGroup
}
