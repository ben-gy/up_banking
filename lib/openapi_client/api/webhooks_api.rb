=begin
#Up API

#The Up API gives you programmatic access to your balances and transaction data. You can request past transactions or set up webhooks to receive real-time events when new transactions hit your account. It’s new, it’s exciting and it’s just the beginning. 

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

require 'cgi'

module OpenapiClient
  class WebhooksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List webhooks
    # Retrieve a list of configured webhooks. The returned list is [paginated](#pagination) and can be scrolled by following the `next` and `prev` links where present. Results are ordered oldest first to newest last. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records to return in each page. 
    # @return [ListWebhooksResponse]
    def webhooks_get(opts = {})
      data, _status_code, _headers = webhooks_get_with_http_info(opts)
      data
    end

    # List webhooks
    # Retrieve a list of configured webhooks. The returned list is [paginated](#pagination) and can be scrolled by following the &#x60;next&#x60; and &#x60;prev&#x60; links where present. Results are ordered oldest first to newest last. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records to return in each page. 
    # @return [Array<(ListWebhooksResponse, Integer, Hash)>] ListWebhooksResponse data, response status code and response headers
    def webhooks_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.webhooks_get ...'
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListWebhooksResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.webhooks_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#webhooks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete webhook
    # Delete a specific webhook by providing its unique identifier. Once deleted, webhook events will no longer be sent to the configured URL. 
    # @param id [String] The unique identifier for the webhook. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def webhooks_id_delete(id, opts = {})
      webhooks_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete webhook
    # Delete a specific webhook by providing its unique identifier. Once deleted, webhook events will no longer be sent to the configured URL. 
    # @param id [String] The unique identifier for the webhook. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def webhooks_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.webhooks_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhooksApi.webhooks_id_delete"
      end
      # resource path
      local_var_path = '/webhooks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.webhooks_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#webhooks_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve webhook
    # Retrieve a specific webhook by providing its unique identifier. 
    # @param id [String] The unique identifier for the webhook. 
    # @param [Hash] opts the optional parameters
    # @return [GetWebhookResponse]
    def webhooks_id_get(id, opts = {})
      data, _status_code, _headers = webhooks_id_get_with_http_info(id, opts)
      data
    end

    # Retrieve webhook
    # Retrieve a specific webhook by providing its unique identifier. 
    # @param id [String] The unique identifier for the webhook. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetWebhookResponse, Integer, Hash)>] GetWebhookResponse data, response status code and response headers
    def webhooks_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.webhooks_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WebhooksApi.webhooks_id_get"
      end
      # resource path
      local_var_path = '/webhooks/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetWebhookResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.webhooks_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#webhooks_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create webhook
    # Create a new webhook with a given URL. The URL will receive webhook events as JSON-encoded `POST` requests. The URL must respond with a HTTP `200` status on success.  There is currently a limit of 10 webhooks at any given time. Once this limit is reached, existing webhooks will need to be deleted before new webhooks can be created.  Event delivery is retried with exponential backoff if the URL is unreachable or it does not respond with a `200` status. The response includes a `secretKey` attribute, which is used to sign requests sent to the webhook URL. It will not be returned from any other endpoints within the Up API. If the `secretKey` is lost, simply create a new webhook with the same URL, capture its `secretKey` and then delete the original webhook. See [Handling webhook events](#callback_post_webhookURL) for details on how to process webhook events.  It is probably a good idea to test the webhook by [sending it a `PING` event](#post_webhooks_webhookId_ping) after creating it. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhookRequest] :create_webhook_request 
    # @return [CreateWebhookResponse]
    def webhooks_post(opts = {})
      data, _status_code, _headers = webhooks_post_with_http_info(opts)
      data
    end

    # Create webhook
    # Create a new webhook with a given URL. The URL will receive webhook events as JSON-encoded &#x60;POST&#x60; requests. The URL must respond with a HTTP &#x60;200&#x60; status on success.  There is currently a limit of 10 webhooks at any given time. Once this limit is reached, existing webhooks will need to be deleted before new webhooks can be created.  Event delivery is retried with exponential backoff if the URL is unreachable or it does not respond with a &#x60;200&#x60; status. The response includes a &#x60;secretKey&#x60; attribute, which is used to sign requests sent to the webhook URL. It will not be returned from any other endpoints within the Up API. If the &#x60;secretKey&#x60; is lost, simply create a new webhook with the same URL, capture its &#x60;secretKey&#x60; and then delete the original webhook. See [Handling webhook events](#callback_post_webhookURL) for details on how to process webhook events.  It is probably a good idea to test the webhook by [sending it a &#x60;PING&#x60; event](#post_webhooks_webhookId_ping) after creating it. 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateWebhookRequest] :create_webhook_request 
    # @return [Array<(CreateWebhookResponse, Integer, Hash)>] CreateWebhookResponse data, response status code and response headers
    def webhooks_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.webhooks_post ...'
      end
      # resource path
      local_var_path = '/webhooks'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_webhook_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateWebhookResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.webhooks_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#webhooks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List webhook logs
    # Retrieve a list of delivery logs for a webhook by providing its unique identifier. This is useful for analysis and debugging purposes. The returned list is [paginated](#pagination) and can be scrolled by following the `next` and `prev` links where present. Results are ordered newest first to oldest last. Logs may be automatically purged after a period of time. 
    # @param webhook_id [String] The unique identifier for the webhook. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records to return in each page. 
    # @return [ListWebhookDeliveryLogsResponse]
    def webhooks_webhook_id_logs_get(webhook_id, opts = {})
      data, _status_code, _headers = webhooks_webhook_id_logs_get_with_http_info(webhook_id, opts)
      data
    end

    # List webhook logs
    # Retrieve a list of delivery logs for a webhook by providing its unique identifier. This is useful for analysis and debugging purposes. The returned list is [paginated](#pagination) and can be scrolled by following the &#x60;next&#x60; and &#x60;prev&#x60; links where present. Results are ordered newest first to oldest last. Logs may be automatically purged after a period of time. 
    # @param webhook_id [String] The unique identifier for the webhook. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page_size The number of records to return in each page. 
    # @return [Array<(ListWebhookDeliveryLogsResponse, Integer, Hash)>] ListWebhookDeliveryLogsResponse data, response status code and response headers
    def webhooks_webhook_id_logs_get_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.webhooks_webhook_id_logs_get ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.webhooks_webhook_id_logs_get"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}/logs'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page[size]'] = opts[:'page_size'] if !opts[:'page_size'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListWebhookDeliveryLogsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.webhooks_webhook_id_logs_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#webhooks_webhook_id_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Ping webhook
    # Send a `PING` event to a webhook by providing its unique identifier. This is useful for testing and debugging purposes. The event is delivered asynchronously and its data is returned in the response to this request. 
    # @param webhook_id [String] The unique identifier for the webhook. 
    # @param [Hash] opts the optional parameters
    # @return [WebhookEventCallback]
    def webhooks_webhook_id_ping_post(webhook_id, opts = {})
      data, _status_code, _headers = webhooks_webhook_id_ping_post_with_http_info(webhook_id, opts)
      data
    end

    # Ping webhook
    # Send a &#x60;PING&#x60; event to a webhook by providing its unique identifier. This is useful for testing and debugging purposes. The event is delivered asynchronously and its data is returned in the response to this request. 
    # @param webhook_id [String] The unique identifier for the webhook. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WebhookEventCallback, Integer, Hash)>] WebhookEventCallback data, response status code and response headers
    def webhooks_webhook_id_ping_post_with_http_info(webhook_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebhooksApi.webhooks_webhook_id_ping_post ...'
      end
      # verify the required parameter 'webhook_id' is set
      if @api_client.config.client_side_validation && webhook_id.nil?
        fail ArgumentError, "Missing the required parameter 'webhook_id' when calling WebhooksApi.webhooks_webhook_id_ping_post"
      end
      # resource path
      local_var_path = '/webhooks/{webhookId}/ping'.sub('{' + 'webhookId' + '}', CGI.escape(webhook_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WebhookEventCallback'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearer_auth']

      new_options = opts.merge(
        :operation => :"WebhooksApi.webhooks_webhook_id_ping_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WebhooksApi#webhooks_webhook_id_ping_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
