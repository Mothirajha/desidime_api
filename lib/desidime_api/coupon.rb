module DesidimeApi

  class Coupon

    class << self

      def all
        DesidimeApi.client.get('/v2/coupons.json')
      end

      def active
        DesidimeApi.client.get('/v2/coupons/active.json')
      end

      def featured
        DesidimeApi.client.get('/v2/coupons/featured.json')
      end

    end

  end
  
end