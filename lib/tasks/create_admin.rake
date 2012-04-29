namespace :db do
  desc 'Create musicglue admin user'
  task :create_admin_user do
    require_relative '../../config/environment'

    if User.exists? email: 'tom@musicglue.com'
      puts 'User tom@musicglue.com at already exists'
    else
      user = User.new username: 'musicglue', email: 'tom@musicglue.com', password: 'musicglue'
      user.save!
      puts 'User tom@musicglue.com created'
    end
  end
end
