class AddCookiesToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :cookies, :text
  end
end
