module Moip
	class ClientFactory
		attr_reader :token, :secret, :access_token

		def initialize
			@token, @secret, @access_token = "YJNG2JJ7EF9D04DOMTGE8T6ZC2TCZACD", "L4BH67OEOPX8L8KKH9HTTSWMCFZH5H2BYS18FOUK", "96236c8ce7944d80a98cf64ea7f3f2e5_v2"
		end

		def default_basic
			# token, secret = READ from yml
			auth = Moip::Auth::Basic.new(token, secret)
			client = Moip::Client.new(:sandbox, auth)
		end

		def default_oauth
			auth = Moip::Auth::OAuth.new(access_token)
			client = Moip::Client.new(:sandbox, auth)
		end

		def connect_basic
			auth = Moip::Auth::Basic.new(token, secret)
			client = Moip::Client.new(:sandbox, auth, :connect)
		end
	end
end
