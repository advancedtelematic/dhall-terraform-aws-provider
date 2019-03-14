
let encryptionKey = {}

let artifactStore =
  { encryption_key = None (../dhall/aws_codepipeline.dhall).EncryptionKey }

let action =
  { configuration = None (List { mapKey : Text, mapValue : Text })
  , input_artifacts = None (List Text)
  , output_artifacts = None (List Text)
  , role_arn = None Text
  , run_order = None Natural
  }

let stage = {}

let awsCodepipeline = {}

in
{ action = action
, artifactStore = artifactStore
}
