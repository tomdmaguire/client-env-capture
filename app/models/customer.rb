class Customer < ActiveRecord::Base
  attr_accessible :browser, :browser_version, :cookies, :email, :engine, :engine_version, :ip_address, :name, :operating_system, :raw_request

  validates_presence_of :email, :name
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
end
