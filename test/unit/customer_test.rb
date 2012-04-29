require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  def test_searchable_set_on_save
    customer = customers(:one)
    customer.save!
    assert_equal 'john smith johnsmith@example.com', customer.searchable
  end
end
