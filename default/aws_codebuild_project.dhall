
let artifacts =
  { encryption_disabled = None Bool
  , location = None Text
  , name = None Text
  , namespace_type = None Text
  , packaging = None Text
  , path = None Text
  }

let cache =
  { location = None Text
  , type = None Text
  }

let environmentVariable =
  { type = None Text }

let environment =
  { certificate = None Text
  , privileged_mode = None Bool
  , environment_variable = None (List (../dhall/aws_codebuild_project.dhall).EnvironmentVariable)
  }

let secondaryArtifacts =
  { encryption_disabled = None Bool
  , location = None Text
  , name = None Text
  , namespace_type = None Text
  , packaging = None Text
  , path = None Text
  }

let auth =
  { resource = None Text }

let secondarySources =
  { buildspec = None Text
  , git_clone_depth = None Natural
  , insecure_ssl = None Bool
  , location = None Text
  , report_build_status = None Bool
  , auth = None (List (../dhall/aws_codebuild_project.dhall).Auth)
  }

let auth =
  { resource = None Text }

let source =
  { buildspec = None Text
  , git_clone_depth = None Natural
  , insecure_ssl = None Bool
  , location = None Text
  , report_build_status = None Bool
  , auth = None (List (../dhall/aws_codebuild_project.dhall).Auth)
  }

let vpcConfig = {}

let awsCodebuildProject =
  { badge_enabled = None Bool
  , build_timeout = None Natural
  , description = None Text
  , encryption_key = None Text
  , tags = None (List { mapKey : Text, mapValue : Text })
  , cache = None (../dhall/aws_codebuild_project.dhall).Cache
  , secondary_artifacts = None (List (../dhall/aws_codebuild_project.dhall).SecondaryArtifacts)
  , secondary_sources = None (List (../dhall/aws_codebuild_project.dhall).SecondarySources)
  , vpc_config = None (../dhall/aws_codebuild_project.dhall).VpcConfig
  }

in
{ awsCodebuildProject = awsCodebuildProject
, source = source
, auth = auth
, secondarySources = secondarySources
, auth = auth
, secondaryArtifacts = secondaryArtifacts
, environment = environment
, environmentVariable = environmentVariable
, cache = cache
, artifacts = artifacts
}
