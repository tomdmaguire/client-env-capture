class RequestParser
  class << self
    def parse request
      ip_address = request.env['REMOTE_ADDR']
      agent = Agent.new request.env['HTTP_USER_AGENT']
      yield ip_address, agent, request.cookies
    end
  end
end
