require_relative '../api_error'

module HandleJsonAPI
  # Convert data to the given return type.
  # @param [Object] data Data to be converted
  # @param [String] return_type Return type
  # @return [Mixed] Data in a particular type
  def convert_to_type(data, return_type)
    case return_type
    when /PaginatedCollection|String|Integer|Float|BOOLEAN|DateTime|Date|Object|Array|Hash/
      super
    else
      super JsonApi.new(data).convert[:data], data[:data][:type].classify
    end
  end
end

module ESP
  class ApiClient
    prepend HandleJsonAPI

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
        if data.is_a? ESP::PaginatedCollection
          # Need to set original_params so paginated collection can use it for page calls.
          data.original_params = opts
          data.path            = path
        end
      else
        data = nil
      end
      return data, response.code, response.headers
    end
  end
end
