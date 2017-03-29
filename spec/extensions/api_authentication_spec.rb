require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ESP::ApiAuthentication do
  describe '.sign_request' do
    it 'should add the HMAC headers to the request' do
      request = Typhoeus::Request.new('/v2/organizations.json', method: 'put', body: { name: 'Evident' }.to_json)

      ESP::ApiAuthentication.sign_request(request, 'public_key', 'secret_key')

      expect(request.options[:headers]['Date']).not_to be_nil
      expect(request.options[:headers]['Content-MD5']).to eq(Digest::MD5.base64digest request.options[:body])
      expect(request.options[:headers]['Accept']).to eq('application/vnd.api+json')
      expect(request.options[:headers]['Content-Type']).to eq('application/vnd.api+json')
      expect(request.options[:headers]['Authorization']).to match('Authorization: APIAuth public_key:')
    end
  end
end
