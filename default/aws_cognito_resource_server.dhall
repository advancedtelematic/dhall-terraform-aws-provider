
let scope = {}

let awsCognitoResourceServer =
  { scope = None (List (../dhall/aws_cognito_resource_server.dhall).Scope) }

in
{ awsCognitoResourceServer = awsCognitoResourceServer
}
