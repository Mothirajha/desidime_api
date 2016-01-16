module DesidimeApi

  class Search

    class << self

      # required parameters - type = 'coupon' or 'deals'
      # required parameters - q = keyword
      def global(parmeters)
        DesidimeApi.client.get("/v2/search.json", parmeters)
      end

      # required paramters - q = keyword
      def merchant(parmeters)
        DesidimeApi.client.get("/v2/merchants/popular.json", parmeters)
      end

    end

  end

end