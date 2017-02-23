require_relative '../api_error'
module ESP
  class ApiClient
    # Call an API with given options.
    #
    # @return [Array<(Object, Fixnum, Hash)>] an array of 3 elements:
    #   the data deserialized from response body (could be nil), response status code and response headers.
    def call_api(http_method, path, opts = {})
      puts "@@@@@@@@@ #{__FILE__}:#{__LINE__} \n********** path = " + path.inspect
      puts "@@@@@@@@@ #{__FILE__}:#{__LINE__} \n********** opts = " + opts.inspect
      if Hash(opts[:form_params])['filter']
        opts[:body] = opts[:form_params]
      elsif opts[:form_params].present?
        opts[:body] ||= { data: { attributes: opts[:form_params] } }
      end

      request = build_request(http_method, path, opts)

      puts "@@@@@@@@@ #{__FILE__}:#{__LINE__} \n********** request = " + request.inspect
      ApiAuthentication.sign_request(request, ENV['ESP_ACCESS_KEY_ID'], ENV['ESP_SECRET_ACCESS_KEY'])

      response = request.run

      puts "@@@@@@@@@ #{__FILE__}:#{__LINE__} \n********** response.body = " + response.body.inspect
      if @config.debugging
        @config.logger.debug "HTTP response body ~BEGIN~\n#{response.body}\n~END~\n"
      end

      unless response.success?
        fail ESP::ApiError.new(:code             => response.code,
                               :response_headers => response.headers,
                               :response_body    => response.body),
             response.status_message
      end

      if opts[:return_type]
        data = deserialize(response, opts[:return_type])
      else
        data = nil
      end
      return data, response.code, response.headers
    end
  end
end
