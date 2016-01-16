module DesidimeApi

  class Authentication
    
    class << self

      def to_get_access_token(parameters)
        DesidimeApi.client.post("/oauth/token.json", parameters)
      end

      def to_get_otp(access_token, parameters)
        DesidimeApi.client.post("/v2/verify-mobile-number.json", parameters, access_token) 
      end

      def verify_otp(access_token, parameters)
        DesidimeApi.client.post("/v2/verify-mobile-number/finish.json", parameters, access_token)
      end

    end

  end

end