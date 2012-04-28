class AddUserAgentToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :user_agent, :text
  end
end
