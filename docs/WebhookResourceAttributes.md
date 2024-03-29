# UpBankingClient::WebhookResourceAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL that this webhook is configured to &#x60;POST&#x60; events to.  |  |
| **description** | **String** | An optional description that was provided at the time the webhook was created.  |  |
| **secret_key** | **String** | A shared secret key used to sign all webhook events sent to the configured webhook URL. This field is returned only once, upon the initial creation of the webhook. If lost, create a new webhook and delete this webhook.  The webhook URL receives a request with a &#x60;X-Up-Authenticity-Signature&#x60; header, which is the SHA-256 HMAC of the entire raw request body signed using this &#x60;secretKey&#x60;. It is advised to compute and check this signature to verify the authenticity of requests sent to the webhook URL. See [Handling webhook events](#callback_post_webhookURL) for full details.  | [optional] |
| **created_at** | **Time** | The date-time at which this webhook was created.  |  |

## Example

```ruby
require 'up_banking'

instance = UpBankingClient::WebhookResourceAttributes.new(
  url: null,
  description: null,
  secret_key: null,
  created_at: null
)
```

