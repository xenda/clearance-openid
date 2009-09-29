class ClearanceOpenidGenerator < Rails::Generator::Base

  def manifest

    migrations = %w(add_openid_tables add_identity_url_to_users)

     record do |m|

         # m.insert_into "app/controllers/application_controller.rb",
                       # "include Clearance::Admin"

         # m.insert_into "app/models/user.rb", "include Clearance::Admin::User"

         migrations.each do |migration|

           m.migration_template "migrations/#{migration}.rb",
                                'db/migrate',
                                :migration_file_name => "clearance_openid_#{migration}"
                              
        end

     end
   end

end