=begin
#ESP Documentation

#The Evident Security Platform API (version 2.0) is designed to allow users granular control over their Amazon Web Service security experience by allowing them to review alerts, monitor signatures, and create custom signatures.

OpenAPI spec version: v2_sdk

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module ESP
  class ExternalAccountDisabledSignaturesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # A successful call to this API will disable a signature for an external account.
    # 
    # @param external_account_id The ID of the external account to disable a signature on
    # @param signature_id The ID of the signature to disable
    # @param [Hash] opts the optional parameters
    # @return [Meta]
    def create(external_account_id, signature_id, opts = {})
      data, _status_code, _headers = create_with_http_info(external_account_id, signature_id, opts)
      return data
    end

    # A successful call to this API will disable a signature for an external account.
    # 
    # @param external_account_id The ID of the external account to disable a signature on
    # @param signature_id The ID of the signature to disable
    # @param [Hash] opts the optional parameters
    # @return [Array<(Meta, Fixnum, Hash)>] Meta data, response status code and response headers
    def create_with_http_info(external_account_id, signature_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountDisabledSignaturesApi.create ..."
      end
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling ExternalAccountDisabledSignaturesApi.create" if external_account_id.nil?
      # verify the required parameter 'signature_id' is set
      fail ArgumentError, "Missing the required parameter 'signature_id' when calling ExternalAccountDisabledSignaturesApi.create" if signature_id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{external_account_id}/disabled_signatures.json_api".sub('{format}','json_api').sub('{' + 'external_account_id' + '}', external_account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["signature_id"] = signature_id

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Meta')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountDisabledSignaturesApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # A successful call to this API will remove a signature from the disabled signature list on an external account.
    # 
    # @param external_account_id The ID of the external account to enable a signature on
    # @param signature_id The ID of the signature to enable
    # @param [Hash] opts the optional parameters
    # @return [Meta]
    def destroy(external_account_id, signature_id, opts = {})
      data, _status_code, _headers = destroy_with_http_info(external_account_id, signature_id, opts)
      return data
    end

    # A successful call to this API will remove a signature from the disabled signature list on an external account.
    # 
    # @param external_account_id The ID of the external account to enable a signature on
    # @param signature_id The ID of the signature to enable
    # @param [Hash] opts the optional parameters
    # @return [Array<(Meta, Fixnum, Hash)>] Meta data, response status code and response headers
    def destroy_with_http_info(external_account_id, signature_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountDisabledSignaturesApi.destroy ..."
      end
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling ExternalAccountDisabledSignaturesApi.destroy" if external_account_id.nil?
      # verify the required parameter 'signature_id' is set
      fail ArgumentError, "Missing the required parameter 'signature_id' when calling ExternalAccountDisabledSignaturesApi.destroy" if signature_id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{external_account_id}/disabled_signatures.json_api".sub('{format}','json_api').sub('{' + 'external_account_id' + '}', external_account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["signature_id"] = signature_id

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Meta')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountDisabledSignaturesApi#destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # A successful call to this API returns all the disabled signatures of the associated external account, identified by the external_account_id parameter.
    # 
    # @param external_account_id The ID of the external account to retrieve the disabled signatures for
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :filter Filter Params for Searching.  See Searching Lists for more information.
    # @option opts [String] :include Related objects that can be included in the response.  See Including Objects for more information.
    # @option opts [String] :page Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page (default to {:number=>1,+:size=>20})
    # @return [PaginatedCollection]
    def list(external_account_id, opts = {})
      data, _status_code, _headers = list_with_http_info(external_account_id, opts)
      return data
    end

    # A successful call to this API returns all the disabled signatures of the associated external account, identified by the external_account_id parameter.
    # 
    # @param external_account_id The ID of the external account to retrieve the disabled signatures for
    # @param [Hash] opts the optional parameters
    # @option opts [Hash<String, String>] :filter Filter Params for Searching.  See Searching Lists for more information.
    # @option opts [String] :include Related objects that can be included in the response.  See Including Objects for more information.
    # @option opts [String] :page Page Number and Page Size.  number is the page number of the collection to return, size is the number of items to return per page
    # @return [Array<(PaginatedCollection, Fixnum, Hash)>] PaginatedCollection data, response status code and response headers
    def list_with_http_info(external_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountDisabledSignaturesApi.list ..."
      end
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling ExternalAccountDisabledSignaturesApi.list" if external_account_id.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{external_account_id}/disabled_signatures.json_api".sub('{format}','json_api').sub('{' + 'external_account_id' + '}', external_account_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'include'] = opts[:'include'] if !opts[:'include'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["filter"] = opts[:'filter'] if !opts[:'filter'].nil?
      form_params["page"] = opts[:'page'] if !opts[:'page'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PaginatedCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountDisabledSignaturesApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # A successful call to this API will update the disabled signatures on an external account.
    # 
    # @param external_account_id The ID of the external account to update the disabled signatures of
    # @param disabled_signature_ids An array of all the signatures to disable on the external account.  This will enable signature IDs that were previously disabled but not included on this list
    # @param [Hash] opts the optional parameters
    # @return [ExternalAccount]
    def update(external_account_id, disabled_signature_ids, opts = {})
      data, _status_code, _headers = update_with_http_info(external_account_id, disabled_signature_ids, opts)
      return data
    end

    # A successful call to this API will update the disabled signatures on an external account.
    # 
    # @param external_account_id The ID of the external account to update the disabled signatures of
    # @param disabled_signature_ids An array of all the signatures to disable on the external account.  This will enable signature IDs that were previously disabled but not included on this list
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExternalAccount, Fixnum, Hash)>] ExternalAccount data, response status code and response headers
    def update_with_http_info(external_account_id, disabled_signature_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ExternalAccountDisabledSignaturesApi.update ..."
      end
      # verify the required parameter 'external_account_id' is set
      fail ArgumentError, "Missing the required parameter 'external_account_id' when calling ExternalAccountDisabledSignaturesApi.update" if external_account_id.nil?
      # verify the required parameter 'disabled_signature_ids' is set
      fail ArgumentError, "Missing the required parameter 'disabled_signature_ids' when calling ExternalAccountDisabledSignaturesApi.update" if disabled_signature_ids.nil?
      # resource path
      local_var_path = "/api/v2/external_accounts/{external_account_id}/disabled_signatures.json_api".sub('{format}','json_api').sub('{' + 'external_account_id' + '}', external_account_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.api+json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/vnd.api+json'])

      # form parameters
      form_params = {}
      form_params["disabled_signature_ids"] = @api_client.build_collection_param(disabled_signature_ids, :csv)

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ExternalAccount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExternalAccountDisabledSignaturesApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
