
let patchFilter = {}

let approvalRule =
  { compliance_level = None Text
  , enable_non_security = None Bool
  }

let globalFilter = {}

let awsSsmPatchBaseline =
  { approved_patches = None (List Text)
  , approved_patches_compliance_level = None Text
  , description = None Text
  , operating_system = None Text
  , rejected_patches = None (List Text)
  , approval_rule = None (List (../dhall/aws_ssm_patch_baseline.dhall).ApprovalRule)
  , global_filter = None (List (../dhall/aws_ssm_patch_baseline.dhall).GlobalFilter)
  }

in
{ awsSsmPatchBaseline = awsSsmPatchBaseline
, approvalRule = approvalRule
}
