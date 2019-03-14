
let costTypes =
  { include_credit = None Bool
  , include_discount = None Bool
  , include_other_subscription = None Bool
  , include_recurring = None Bool
  , include_refund = None Bool
  , include_subscription = None Bool
  , include_support = None Bool
  , include_tax = None Bool
  , include_upfront = None Bool
  , use_amortized = None Bool
  , use_blended = None Bool
  }

let awsBudgetsBudget =
  { account_id = None Text
  , cost_filters = None (List { mapKey : Text, mapValue : Text })
  , name = None Text
  , name_prefix = None Text
  , time_period_end = None Text
  , cost_types = None (../dhall/aws_budgets_budget.dhall).CostTypes
  }

in
{ awsBudgetsBudget = awsBudgetsBudget
, costTypes = costTypes
}
