require 'test_helper'
require 'ostruct'

class RequestParserTest < ActiveSupport::TestCase
  def request
    request = OpenStruct.new
    request.env = { 'HTTP_USER_AGENT' => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.163 Safari/535.19', 'REMOTE_ADDR' => '127.0.0.1' }
    request.cookies = { 'mg_basket' => '{"Foo":"Barr"}', 'mg_user_location' => '{"Faz":"Baz"}' }
    request
  end

  def test_parse
    RequestParser.parse request do |ip_address, agent, cookies|
      assert_equal ip_address, '127.0.0.1'
      assert_equal agent.name.to_s, 'Chrome'
      assert_equal agent.version, '18.0.1025.163'
      assert_equal agent.engine.to_s, 'webkit'
      assert_equal agent.os.to_s, 'OS X 10.6'
      assert_equal agent.engine_version, '535.19'
      assert_equal cookies, 'mg_basket: {"Foo":"Barr"}; mg_user_location: {"Faz":"Baz"}'
    end
  end
end
