class Customer < ActiveRecord::Base
  attr_accessible :browser, :browser_version, :cookies, :email, :engine, :engine_version, :ip_address, :name, :operating_system, :raw_request, :searchable

  validates_presence_of :email, :name
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i

  before_save :set_searchable

  def self.search(search)
    if search
      where('searchable LIKE ?', "%#{search}%")
    else
      scoped
    end
  end

  private

  def set_searchable
    self.searchable = "#{self.name} #{self.email}".downcase
  end
end
