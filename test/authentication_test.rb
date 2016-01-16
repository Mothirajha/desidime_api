require 'test_helper'

class AuthenticationTest < Minitest::Test
  def test_whether_login_returns_access_token_and_refresh_token
    result = DesidimeApi::Authentication.to_get_access_token(paramters)
    assert (result["access_token"].nil? or result["access_token"].strip.empty? and result["refresh_token"].nil? or result["refresh_token"].strip.empty?)
  end
end