
let PatchFilterOptional = {}

let PatchFilterRequired =
  { key: Text
  , values: (List Text)
  }
let PatchFilter = PatchFilterOptional //\\ PatchFilterRequired

let ApprovalRuleOptional =
  { compliance_level: Optional Text
  , enable_non_security: Optional Bool
  }

let ApprovalRuleRequired =
  { approve_after_days: Natural
  , patch_filter: List List PatchFilter
  }
let ApprovalRule = ApprovalRuleOptional //\\ ApprovalRuleRequired

let GlobalFilterOptional = {}

let GlobalFilterRequired =
  { key: Text
  , values: (List Text)
  }
let GlobalFilter = GlobalFilterOptional //\\ GlobalFilterRequired

let AwsSsmPatchBaselineOptional =
  { approved_patches: Optional (List Text)
  , approved_patches_compliance_level: Optional Text
  , description: Optional Text
  , operating_system: Optional Text
  , rejected_patches: Optional (List Text)
  , approval_rule: Optional (List ApprovalRule)
  , global_filter: Optional (List GlobalFilter)
  }

let AwsSsmPatchBaselineRequired =
  { name: Text }
let AwsSsmPatchBaseline = AwsSsmPatchBaselineOptional //\\ AwsSsmPatchBaselineRequired

in
{ AwsSsmPatchBaselineOptional = AwsSsmPatchBaselineOptional
, AwsSsmPatchBaselineRequired = AwsSsmPatchBaselineRequired
, AwsSsmPatchBaseline = AwsSsmPatchBaseline
, GlobalFilter = GlobalFilter
, ApprovalRuleOptional = ApprovalRuleOptional
, ApprovalRuleRequired = ApprovalRuleRequired
, ApprovalRule = ApprovalRule
, PatchFilter = PatchFilter
}
