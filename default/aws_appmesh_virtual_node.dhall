
let healthCheck =
  { path = None Text
  , port = None Natural
  }

let portMapping = {}

let listener = {}

let dns = {}

let serviceDiscovery = {}

let spec =
  { backends = None (List Text)
  , listener = None (../dhall/aws_appmesh_virtual_node.dhall).Listener
  , service_discovery = None (../dhall/aws_appmesh_virtual_node.dhall).ServiceDiscovery
  }

let awsAppmeshVirtualNode = {}

in
{ spec = spec
, healthCheck = healthCheck
}
