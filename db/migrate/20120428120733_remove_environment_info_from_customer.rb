class RemoveEnvironmentInfoFromCustomer < ActiveRecord::Migration
  def up
    remove_column :customers, :environment_info
  end

  def down
    add_column :customers, :environment_info, :text
  end
end
