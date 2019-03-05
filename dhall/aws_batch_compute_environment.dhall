
let ComputeResourcesOptional =
  { bid_percentage: Optional Natural
  , desired_vcpus: Optional Natural
  , ec2_key_pair: Optional Text
  , image_id: Optional Text
  , spot_iam_fleet_role: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let ComputeResourcesRequired =
  { instance_role: Text
  , instance_type: (List Text)
  , max_vcpus: Natural
  , min_vcpus: Natural
  , security_group_ids: (List Text)
  , subnets: (List Text)
  , type: Text
  }
let ComputeResources = ComputeResourcesOptional //\\ ComputeResourcesRequired

let AwsBatchComputeEnvironmentOptional =
  { arn: Optional Text
  , ecc_cluster_arn: Optional Text
  , ecs_cluster_arn: Optional Text
  , state: Optional Text
  , status: Optional Text
  , status_reason: Optional Text
  , compute_resources: Optional ComputeResources
  }

let AwsBatchComputeEnvironmentRequired =
  { compute_environment_name: Text
  , service_role: Text
  , type: Text
  }
let AwsBatchComputeEnvironment = AwsBatchComputeEnvironmentOptional //\\ AwsBatchComputeEnvironmentRequired

in
{ AwsBatchComputeEnvironmentOptional = AwsBatchComputeEnvironmentOptional
, AwsBatchComputeEnvironmentRequired = AwsBatchComputeEnvironmentRequired
, AwsBatchComputeEnvironment = AwsBatchComputeEnvironment
, ComputeResourcesOptional = ComputeResourcesOptional
, ComputeResourcesRequired = ComputeResourcesRequired
, ComputeResources = ComputeResources
}
