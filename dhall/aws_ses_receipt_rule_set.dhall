
let AwsSesReceiptRuleSetOptional = {}

let AwsSesReceiptRuleSetRequired =
  { rule_set_name: Text }
let AwsSesReceiptRuleSet = AwsSesReceiptRuleSetOptional //\\ AwsSesReceiptRuleSetRequired

in
{ AwsSesReceiptRuleSet = AwsSesReceiptRuleSet
}
