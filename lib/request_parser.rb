class RequestParser
  class << self
    def parse request
      ip_address = request.env['REMOTE_ADDR']
      agent = Agent.new request.env['HTTP_USER_AGENT']
      cookies = request.cookies.map{ |k,v| "#{k}: #{v}" }.join '; '
      yield ip_address, agent, cookies
    end
  end
end
