
let SpecOptional = {}

let SpecRequired =
  { service_names : (List Text) }
let Spec = SpecOptional //\\ SpecRequired

let AwsAppmeshVirtualRouterOptional = {}

let AwsAppmeshVirtualRouterRequired =
  { mesh_name : Text
  , name : Text
  , spec : Spec
  }
let AwsAppmeshVirtualRouter = AwsAppmeshVirtualRouterOptional //\\ AwsAppmeshVirtualRouterRequired

in
{ AwsAppmeshVirtualRouter = AwsAppmeshVirtualRouter
, Spec = Spec
}
