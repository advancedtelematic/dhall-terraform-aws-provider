
let SpecOptional =
  { backends : Optional (List Text)
  , listener : Optional (./AwsAppmeshVirtualNode.Spec.Listener).Listener
  , service_discovery : Optional (./AwsAppmeshVirtualNode.Spec.ServiceDiscovery).ServiceDiscovery
  }

let SpecRequired = {}
let Spec = SpecOptional //\\ SpecRequired

in
{ SpecOptional = SpecOptional
, SpecRequired = SpecRequired
, Spec = Spec
}
