
let AwsSesActiveReceiptRuleSetOptional = {}

let AwsSesActiveReceiptRuleSetRequired =
  { rule_set_name : Text }
let AwsSesActiveReceiptRuleSet = AwsSesActiveReceiptRuleSetOptional //\\ AwsSesActiveReceiptRuleSetRequired

in
{ AwsSesActiveReceiptRuleSet = AwsSesActiveReceiptRuleSet
}
