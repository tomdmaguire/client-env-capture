class RequestParser
  class << self
    def parse request
      ip_address = request.env['HTTP_X_FORWARDED_FOR'] || request.env['REMOTE_ADDR']
      agent = UserAgent.new request.env['HTTP_USER_AGENT']
      cookies = request.cookies.map{ |k,v| "#{k}: #{v}" }.join '; '
      raw_request = request.env.keys.map { |k| "#{k} : #{request.env[k]}" }.join '; '
      yield ip_address, agent, cookies, raw_request
    end
  end
end
