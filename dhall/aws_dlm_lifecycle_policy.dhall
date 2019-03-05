
let CreateRuleOptional =
  { interval_unit: Optional Text
  , times: Optional (List Text)
  }

let CreateRuleRequired =
  { interval: Natural }
let CreateRule = CreateRuleOptional //\\ CreateRuleRequired

let RetainRuleOptional = {}

let RetainRuleRequired =
  { count: Natural }
let RetainRule = RetainRuleOptional //\\ RetainRuleRequired

let ScheduleOptional =
  { copy_tags: Optional Bool
  , tags_to_add: Optional (List { mapKey : Text, mapValue : Text })
  }

let ScheduleRequired =
  { name: Text
  , create_rule: CreateRule
  , retain_rule: RetainRule
  }
let Schedule = ScheduleOptional //\\ ScheduleRequired

let PolicyDetailsOptional = {}

let PolicyDetailsRequired =
  { resource_types: (List Text)
  , target_tags: (List { mapKey : Text, mapValue : Text })
  , schedule: List Schedule
  }
let PolicyDetails = PolicyDetailsOptional //\\ PolicyDetailsRequired

let AwsDlmLifecyclePolicyOptional =
  { state: Optional Text }

let AwsDlmLifecyclePolicyRequired =
  { description: Text
  , execution_role_arn: Text
  , policy_details: PolicyDetails
  }
let AwsDlmLifecyclePolicy = AwsDlmLifecyclePolicyOptional //\\ AwsDlmLifecyclePolicyRequired

in
{ AwsDlmLifecyclePolicyOptional = AwsDlmLifecyclePolicyOptional
, AwsDlmLifecyclePolicyRequired = AwsDlmLifecyclePolicyRequired
, AwsDlmLifecyclePolicy = AwsDlmLifecyclePolicy
, PolicyDetails = PolicyDetails
, ScheduleOptional = ScheduleOptional
, ScheduleRequired = ScheduleRequired
, Schedule = Schedule
, RetainRule = RetainRule
, CreateRuleOptional = CreateRuleOptional
, CreateRuleRequired = CreateRuleRequired
, CreateRule = CreateRule
}
