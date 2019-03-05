
let ArtifactsOptional =
  { encryption_disabled: Optional Bool
  , location: Optional Text
  , name: Optional Text
  , namespace_type: Optional Text
  , packaging: Optional Text
  , path: Optional Text
  }

let ArtifactsRequired =
  { type: Text }
let Artifacts = ArtifactsOptional //\\ ArtifactsRequired

let CacheOptional =
  { location: Optional Text
  , type: Optional Text
  }

let CacheRequired = {}
let Cache = CacheOptional //\\ CacheRequired

let EnvironmentVariableOptional =
  { type: Optional Text }

let EnvironmentVariableRequired =
  { name: Text
  , value: Text
  }
let EnvironmentVariable = EnvironmentVariableOptional //\\ EnvironmentVariableRequired

let EnvironmentOptional =
  { certificate: Optional Text
  , privileged_mode: Optional Bool
  , environment_variable: Optional (List EnvironmentVariable)
  }

let EnvironmentRequired =
  { compute_type: Text
  , image: Text
  , type: Text
  }
let Environment = EnvironmentOptional //\\ EnvironmentRequired

let SecondaryArtifactsOptional =
  { encryption_disabled: Optional Bool
  , location: Optional Text
  , name: Optional Text
  , namespace_type: Optional Text
  , packaging: Optional Text
  , path: Optional Text
  }

let SecondaryArtifactsRequired =
  { artifact_identifier: Text
  , type: Text
  }
let SecondaryArtifacts = SecondaryArtifactsOptional //\\ SecondaryArtifactsRequired

let AuthOptional =
  { resource: Optional Text }

let AuthRequired =
  { type: Text }
let Auth = AuthOptional //\\ AuthRequired

let SecondarySourcesOptional =
  { buildspec: Optional Text
  , git_clone_depth: Optional Natural
  , insecure_ssl: Optional Bool
  , location: Optional Text
  , report_build_status: Optional Bool
  , auth: Optional (List Auth)
  }

let SecondarySourcesRequired =
  { source_identifier: Text
  , type: Text
  }
let SecondarySources = SecondarySourcesOptional //\\ SecondarySourcesRequired

let AuthOptional =
  { resource: Optional Text }

let AuthRequired =
  { type: Text }
let Auth = AuthOptional //\\ AuthRequired

let SourceOptional =
  { buildspec: Optional Text
  , git_clone_depth: Optional Natural
  , insecure_ssl: Optional Bool
  , location: Optional Text
  , report_build_status: Optional Bool
  , auth: Optional (List Auth)
  }

let SourceRequired =
  { type: Text }
let Source = SourceOptional //\\ SourceRequired

let VpcConfigOptional = {}

let VpcConfigRequired =
  { security_group_ids: (List Text)
  , subnets: (List Text)
  , vpc_id: Text
  }
let VpcConfig = VpcConfigOptional //\\ VpcConfigRequired

let AwsCodebuildProjectOptional =
  { arn: Optional Text
  , badge_enabled: Optional Bool
  , badge_url: Optional Text
  , build_timeout: Optional Natural
  , description: Optional Text
  , encryption_key: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  , cache: Optional Cache
  , secondary_artifacts: Optional (List SecondaryArtifacts)
  , secondary_sources: Optional (List SecondarySources)
  , vpc_config: Optional VpcConfig
  }

let AwsCodebuildProjectRequired =
  { name: Text
  , service_role: Text
  , artifacts: Artifacts
  , environment: Environment
  , source: Source
  }
let AwsCodebuildProject = AwsCodebuildProjectOptional //\\ AwsCodebuildProjectRequired

in
{ AwsCodebuildProjectOptional = AwsCodebuildProjectOptional
, AwsCodebuildProjectRequired = AwsCodebuildProjectRequired
, AwsCodebuildProject = AwsCodebuildProject
, VpcConfig = VpcConfig
, SourceOptional = SourceOptional
, SourceRequired = SourceRequired
, Source = Source
, AuthOptional = AuthOptional
, AuthRequired = AuthRequired
, Auth = Auth
, SecondarySourcesOptional = SecondarySourcesOptional
, SecondarySourcesRequired = SecondarySourcesRequired
, SecondarySources = SecondarySources
, AuthOptional = AuthOptional
, AuthRequired = AuthRequired
, Auth = Auth
, SecondaryArtifactsOptional = SecondaryArtifactsOptional
, SecondaryArtifactsRequired = SecondaryArtifactsRequired
, SecondaryArtifacts = SecondaryArtifacts
, EnvironmentOptional = EnvironmentOptional
, EnvironmentRequired = EnvironmentRequired
, Environment = Environment
, EnvironmentVariableOptional = EnvironmentVariableOptional
, EnvironmentVariableRequired = EnvironmentVariableRequired
, EnvironmentVariable = EnvironmentVariable
, CacheOptional = CacheOptional
, CacheRequired = CacheRequired
, Cache = Cache
, ArtifactsOptional = ArtifactsOptional
, ArtifactsRequired = ArtifactsRequired
, Artifacts = Artifacts
}
