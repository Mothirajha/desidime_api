module DesidimeApi

  class DealAlert

    class << self

      def active(access_token)
        DesidimeApi.client.get("/v2/active_deal_alerts.json", nil, access_token)
      end

      def inactive(access_token)
        DesidimeApi.client.get("/v2/inactive_deal_alerts.json", nil, access_token)
      end

      def show(deal_id, access_token)
        DesidimeApi.client.get("/v2/deal_alerts/#{deal_id}", nil, access_token)
      end

      def create(parameters, access_token)
        DesidimeApi.client.post("/v2/deal_alerts", parameters, access_token)
      end

    end

  end

end