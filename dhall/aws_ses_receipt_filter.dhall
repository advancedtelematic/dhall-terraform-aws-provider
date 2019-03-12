
let AwsSesReceiptFilterOptional = {}

let AwsSesReceiptFilterRequired =
  { cidr : Text
  , name : Text
  , policy : Text
  }
let AwsSesReceiptFilter = AwsSesReceiptFilterOptional //\\ AwsSesReceiptFilterRequired

in
{ AwsSesReceiptFilter = AwsSesReceiptFilter
}
