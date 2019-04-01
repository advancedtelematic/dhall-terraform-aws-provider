
let TagOptional = {}

let TagRequired =
  { key : Text
  , propagate_at_launch : Bool
  , value : Text
  }
let Tag = TagOptional //\\ TagRequired

in
{ Tag = Tag
}
