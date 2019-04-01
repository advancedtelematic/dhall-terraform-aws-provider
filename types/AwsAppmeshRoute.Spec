
let SpecOptional =
  { http_route : Optional (./AwsAppmeshRoute.Spec.HttpRoute).HttpRoute }

let SpecRequired = {}
let Spec = SpecOptional //\\ SpecRequired

in
{ SpecOptional = SpecOptional
, SpecRequired = SpecRequired
, Spec = Spec
}
