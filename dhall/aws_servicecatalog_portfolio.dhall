
let AwsServicecatalogPortfolioOptional =
  { description: Optional Text
  , provider_name: Optional Text
  , tags: Optional (List { mapKey : Text, mapValue : Text })
  }

let AwsServicecatalogPortfolioRequired =
  { name: Text }
let AwsServicecatalogPortfolio = AwsServicecatalogPortfolioOptional //\\ AwsServicecatalogPortfolioRequired

in
{ AwsServicecatalogPortfolioOptional = AwsServicecatalogPortfolioOptional
, AwsServicecatalogPortfolioRequired = AwsServicecatalogPortfolioRequired
, AwsServicecatalogPortfolio = AwsServicecatalogPortfolio
}
