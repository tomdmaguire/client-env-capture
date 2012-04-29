class AddRawRequestToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :raw_request, :text
  end
end
