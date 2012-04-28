class CreateCustomers < ActiveRecord::Migration
  def change
    drop_table :customers

    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :ip_address
      t.string :browser
      t.string :browser_version
      t.string :engine
      t.string :engine_version
      t.string :operating_system
      t.string :cookies

      t.timestamps
    end
  end
end
