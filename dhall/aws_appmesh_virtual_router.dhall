
let SpecOptional = {}

let SpecRequired =
  { service_names: (List Text) }
let Spec = SpecOptional //\\ SpecRequired

let AwsAppmeshVirtualRouterOptional =
  { arn: Optional Text
  , created_date: Optional Text
  , last_updated_date: Optional Text
  }

let AwsAppmeshVirtualRouterRequired =
  { mesh_name: Text
  , name: Text
  , spec: Spec
  }
let AwsAppmeshVirtualRouter = AwsAppmeshVirtualRouterOptional //\\ AwsAppmeshVirtualRouterRequired

in
{ AwsAppmeshVirtualRouterOptional = AwsAppmeshVirtualRouterOptional
, AwsAppmeshVirtualRouterRequired = AwsAppmeshVirtualRouterRequired
, AwsAppmeshVirtualRouter = AwsAppmeshVirtualRouter
, Spec = Spec
}
