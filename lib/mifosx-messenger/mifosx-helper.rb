require 'open-uri'
require 'base64'
require 'net/http'
require 'json'

module MifosXMessenger
	class MifosXHelper

		@baseUrl = nil
		@http = nil
		@headers = nil

		def initialize(options = {})
			#OpenSSL::SSL::VERIFY_PEER == OpenSSL::SSL::VERIFY_NONE
			@baseUrl = options['baseUrl'] || 'https://demo.openmf.org/fineract-provider-provider/api/v1'
			uri = URI.parse(@baseUrl)
			tenantId = options['tenantId'] || 'default'
			user = options['user'] || 'mifos'
			pass = options['pass'] || 'password'
			@http = Net::HTTP.new(uri.host, uri.port)
			@http.use_ssl = uri.scheme == 'https'
			#@http.verify_mode = OpenSSL::SSL::VERIFY_PEER
			@headers = {
				'Fineract-Platform-TenantId' => tenantId,
				'Authorization' => 'Basic '+Base64.encode64(user+':'+pass).gsub("\n",'')
			}
		end

		



	end
end
