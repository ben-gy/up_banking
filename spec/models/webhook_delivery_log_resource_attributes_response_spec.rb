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

# Unit tests for OpenapiClient::WebhookDeliveryLogResourceAttributesResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenapiClient::WebhookDeliveryLogResourceAttributesResponse do
  let(:instance) { OpenapiClient::WebhookDeliveryLogResourceAttributesResponse.new }

  describe 'test an instance of WebhookDeliveryLogResourceAttributesResponse' do
    it 'should create an instance of WebhookDeliveryLogResourceAttributesResponse' do
      expect(instance).to be_instance_of(OpenapiClient::WebhookDeliveryLogResourceAttributesResponse)
    end
  end
  describe 'test attribute "status_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "body"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
