module DesidimeApi

  class Merchant

    class << self

      def list
        DesidimeApi.client.get("/v2/merchants.json")
      end

      def popular(parameters=nil)
        DesidimeApi.client.get("/v2/merchants/popular.json", parameters)
      end

      def show(merchant_id)
        DesidimeApi.client.get("/v2/merchants/#{merchant_id}.json")
      end

      def deals(merchant_id, parameters)
        DesidimeApi.client.get("/v2/merchants/#{merchant_id}/deals.json", parameters)
      end

    end

  end

end