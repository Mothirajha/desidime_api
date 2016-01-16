module DesidimeApi

  class Connection

    attr_reader :protocol, :endpoint, :clientid, :path

    def initialize(protocol, endpoint, clientid)
      @protocol = protocol
      @endpoint = endpoint
      @clientid = clientid
    end

    def prepare_conn(path)
      url = "#{protocol}://#{endpoint}/#{path}"
      url = URI.encode(url)
      conn = Faraday.new(:url => url) do |faraday|
        faraday.request  :url_encoded             # form-encode POST params
        faraday.response :logger                  # log requests to STDOUT
        faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      end
      conn
    end

    def read(method, path, parameters, access_token)
      conn = prepare_conn(path)
      response = conn.send(method) do |req|
        req.headers['Content-Type'] = 'application/json'
        req.headers['X-Desidime-Client'] = clientid
        req.headers['Authorization']= access_token if access_token
        req.body = JSON.generate(parameters, quirks_mode: true)  if parameters
      end
      response.body.strip.empty? ? "" : JSON.parse(response.body)
    end

    def write(method, path, parameters, access_token)
      conn = prepare_conn(path)
      response = conn.send(method) do |req|
        req.headers['Content-Type'] = 'application/json'
        req.headers['X-Desidime-Client'] = clientid
        req.headers['Authorization']= access_token if access_token
        req.body =  JSON.generate(parameters, quirks_mode: true)  if parameters
      end
      response.body.strip.empty? ? "" : JSON.parse(response.body)
    end

    def post(path, parameters=nil, access_token=nil)
      write("post", path, parameters, access_token)
    end

    def put(path, parameters=nil, access_token=nil)
      write("put", path, parameters, access_token)
    end

    def delete(path, parameters=nil, access_token=nil)
      write("put", path, parameters, access_token)
    end

    def get(path, parameters=nil, access_token=nil)
      read("get", path, parameters, access_token)
    end

  end

end