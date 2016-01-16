require "faraday"
require 'uri'
require 'json'
require "desidime_api/version"
require "desidime_api/authentication"
require "desidime_api/connection"
require "desidime_api/coupon"
require "desidime_api/search"
require "desidime_api/channel"
require "desidime_api/merchant"
require "desidime_api/forum"
require "desidime_api/deal_alert"

module DesidimeApi

  class << self
    attr_writer :client
  end

  def self.client
    protocol ||= "xxxxx" # http or https 
    endpoint ||= "domain.com" # domain
    clientid ||= "xxxxyyyyzzzz" # client_id
    @client ||= DesidimeApi::Connection.new(protocol, endpoint, clientid)
  end

end
