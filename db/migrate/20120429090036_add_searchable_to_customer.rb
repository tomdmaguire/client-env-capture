class AddSearchableToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :searchable, :text
  end
end
