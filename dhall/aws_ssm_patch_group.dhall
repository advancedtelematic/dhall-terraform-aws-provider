
let AwsSsmPatchGroupOptional = {}

let AwsSsmPatchGroupRequired =
  { baseline_id : Text
  , patch_group : Text
  }
let AwsSsmPatchGroup = AwsSsmPatchGroupOptional //\\ AwsSsmPatchGroupRequired

in
{ AwsSsmPatchGroup = AwsSsmPatchGroup
}
