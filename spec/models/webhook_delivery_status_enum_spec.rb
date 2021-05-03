=begin
#Up API

#The Up API gives you programmatic access to your balances and transaction data. You can request past transactions or set up webhooks to receive real-time events when new transactions hit your account. It’s new, it’s exciting and it’s just the beginning. 

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::WebhookDeliveryStatusEnum
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::WebhookDeliveryStatusEnum do
  let(:instance) { OpenapiClient::WebhookDeliveryStatusEnum.new }

  describe 'test an instance of WebhookDeliveryStatusEnum' do
    it 'should create an instance of WebhookDeliveryStatusEnum' do
      expect(instance).to be_instance_of(OpenapiClient::WebhookDeliveryStatusEnum)
    end
  end
end
