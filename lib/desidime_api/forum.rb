module DesidimeApi

  class Forum

    class << self

      def all(parameters=nil)
        DesidimeApi.client.get("/v2/forums.json", parameters)
      end

    end

  end

end