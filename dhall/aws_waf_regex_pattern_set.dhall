
let AwsWafRegexPatternSetOptional =
  { regex_pattern_strings: Optional (List Text) }

let AwsWafRegexPatternSetRequired =
  { name: Text }
let AwsWafRegexPatternSet = AwsWafRegexPatternSetOptional //\\ AwsWafRegexPatternSetRequired

in
{ AwsWafRegexPatternSetOptional = AwsWafRegexPatternSetOptional
, AwsWafRegexPatternSetRequired = AwsWafRegexPatternSetRequired
, AwsWafRegexPatternSet = AwsWafRegexPatternSet
}
