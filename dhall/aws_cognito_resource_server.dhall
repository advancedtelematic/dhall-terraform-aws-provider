
let ScopeOptional = {}

let ScopeRequired =
  { scope_description: Text
  , scope_name: Text
  }
let Scope = ScopeOptional //\\ ScopeRequired

let AwsCognitoResourceServerOptional =
  { scope_identifiers: Optional (List Text)
  , scope: Optional (List Scope)
  }

let AwsCognitoResourceServerRequired =
  { identifier: Text
  , name: Text
  , user_pool_id: Text
  }
let AwsCognitoResourceServer = AwsCognitoResourceServerOptional //\\ AwsCognitoResourceServerRequired

in
{ AwsCognitoResourceServerOptional = AwsCognitoResourceServerOptional
, AwsCognitoResourceServerRequired = AwsCognitoResourceServerRequired
, AwsCognitoResourceServer = AwsCognitoResourceServer
, Scope = Scope
}
