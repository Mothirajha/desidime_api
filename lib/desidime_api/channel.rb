module DesidimeApi

  class Channel
    
    class << self

      def list
        DesidimeApi.client.get("/v2/channels.json")
      end

      def info_for_user(user_id, access_token)
        DesidimeApi.client.get("/v2/users/#{user_id}/all.json", nil, access_token)
      end

      def subscribe(channel_id, parameters, access_token)
        DesidimeApi.client.get("/v2/channels/#{channel_id}/subscribe.json", parameters, access_token)
      end

      def unsubscribe(channel_id, access_token)
        DesidimeApi.client.get("/v2/channels/#{channel_id}/unsubscribe.json", nil, access_token)
      end

    end

  end

end