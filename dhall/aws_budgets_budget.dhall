
let CostTypesOptional =
  { include_credit: Optional Bool
  , include_discount: Optional Bool
  , include_other_subscription: Optional Bool
  , include_recurring: Optional Bool
  , include_refund: Optional Bool
  , include_subscription: Optional Bool
  , include_support: Optional Bool
  , include_tax: Optional Bool
  , include_upfront: Optional Bool
  , use_amortized: Optional Bool
  , use_blended: Optional Bool
  }

let CostTypesRequired = {}
let CostTypes = CostTypesOptional //\\ CostTypesRequired

let AwsBudgetsBudgetOptional =
  { account_id: Optional Text
  , cost_filters: Optional (List { mapKey : Text, mapValue : Text })
  , name: Optional Text
  , name_prefix: Optional Text
  , time_period_end: Optional Text
  , cost_types: Optional CostTypes
  }

let AwsBudgetsBudgetRequired =
  { budget_type: Text
  , limit_amount: Text
  , limit_unit: Text
  , time_period_start: Text
  , time_unit: Text
  }
let AwsBudgetsBudget = AwsBudgetsBudgetOptional //\\ AwsBudgetsBudgetRequired

in
{ AwsBudgetsBudgetOptional = AwsBudgetsBudgetOptional
, AwsBudgetsBudgetRequired = AwsBudgetsBudgetRequired
, AwsBudgetsBudget = AwsBudgetsBudget
, CostTypesOptional = CostTypesOptional
, CostTypesRequired = CostTypesRequired
, CostTypes = CostTypes
}
