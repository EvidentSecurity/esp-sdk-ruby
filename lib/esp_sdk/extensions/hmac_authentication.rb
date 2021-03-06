require 'base64'
require 'time'
require 'openssl'

module ESP
  class HmacAuthentication
    attr_reader :config

    def initialize(config = ESP::Configuration.default)
      @config = config
    end

    def sign_request(request)
      timestamp    = Time.now.utc.httpdate
      content_type = 'application/vnd.api+json'

      content_md5 = ''
      if request.options[:method] != :get && request.options[:body]
        content_md5 = Digest::MD5.base64digest request.options[:body]
      end

      string_concat = "#{request.options[:method].upcase},#{content_type},#{content_md5},#{parse_uri(request.url)},#{timestamp}"

      digest = OpenSSL::Digest.new('SHA1')
      hmac   = Base64.strict_encode64(OpenSSL::HMAC.digest(digest, config.secret_access_key, string_concat))

      request.options[:headers]['Date']          = timestamp
      request.options[:headers]['Content-MD5']   = content_md5
      request.options[:headers]['Accept']        = content_type
      request.options[:headers]['Content-Type']  = content_type
      request.options[:headers]['Authorization'] = "Authorization: APIAuth #{config.access_key_id}:#{hmac}"
    end

    private

    URI_WITHOUT_HOST_REGEXP = %r{https?://[^,?/]*}

    def parse_uri(uri)
      uri_without_host = uri.gsub(URI_WITHOUT_HOST_REGEXP, '')
      uri_without_host = uri_without_host.gsub('/localhost:3000', '')
      uri_without_host = uri_without_host.gsub('http://', '')
      return '/' if uri_without_host.empty?
      uri_without_host
    end
  end
end
