
let EncryptionKeyOptional = {}

let EncryptionKeyRequired =
  { id: Text
  , type: Text
  }
let EncryptionKey = EncryptionKeyOptional //\\ EncryptionKeyRequired

let ArtifactStoreOptional =
  { encryption_key: Optional EncryptionKey }

let ArtifactStoreRequired =
  { location: Text
  , type: Text
  }
let ArtifactStore = ArtifactStoreOptional //\\ ArtifactStoreRequired

let ActionOptional =
  { configuration: Optional (List { mapKey : Text, mapValue : Text })
  , input_artifacts: Optional (List Text)
  , output_artifacts: Optional (List Text)
  , role_arn: Optional Text
  , run_order: Optional Natural
  }

let ActionRequired =
  { category: Text
  , name: Text
  , owner: Text
  , provider: Text
  , version: Text
  }
let Action = ActionOptional //\\ ActionRequired

let StageOptional = {}

let StageRequired =
  { name: Text
  , action: List List Action
  }
let Stage = StageOptional //\\ StageRequired

let AwsCodepipelineOptional =
  { arn: Optional Text }

let AwsCodepipelineRequired =
  { name: Text
  , role_arn: Text
  , artifact_store: ArtifactStore
  , stage: List List Stage
  }
let AwsCodepipeline = AwsCodepipelineOptional //\\ AwsCodepipelineRequired

in
{ AwsCodepipelineOptional = AwsCodepipelineOptional
, AwsCodepipelineRequired = AwsCodepipelineRequired
, AwsCodepipeline = AwsCodepipeline
, Stage = Stage
, ActionOptional = ActionOptional
, ActionRequired = ActionRequired
, Action = Action
, ArtifactStoreOptional = ArtifactStoreOptional
, ArtifactStoreRequired = ArtifactStoreRequired
, ArtifactStore = ArtifactStore
, EncryptionKey = EncryptionKey
}
