class AddIpAddressToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :ip_address, :string
  end
end
