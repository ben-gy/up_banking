# UpBankingClient::AccountResourceAttributesBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_code** | **String** | The ISO 4217 currency code.  |  |
| **value** | **String** | The amount of money, formatted as a string in the relevant currency. For example, for an Australian dollar value of $10.56, this field will be &#x60;\&quot;10.56\&quot;&#x60;. The currency symbol is not included in the string.  |  |
| **value_in_base_units** | **Integer** | The amount of money in the smallest denomination for the currency, as a 64-bit integer.  For example, for an Australian dollar value of $10.56, this field will be &#x60;1056&#x60;.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::AccountResourceAttributesBalance.new(
  currency_code: null,
  value: null,
  value_in_base_units: null
)
```

