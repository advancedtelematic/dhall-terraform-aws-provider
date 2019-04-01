
let SpecOptional = {}

let SpecRequired =
  { service_names : (List Text) }
let Spec = SpecOptional //\\ SpecRequired

in
{ Spec = Spec
}
