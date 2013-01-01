# rake db:data:dump <UNAME>='<db_user_name>' <PASS>='<db_user_password>' <FILE>='<custom_file_name>' <DB>='<db_name>' RAILS_ENV='<development | test | production>'
# All parameters are optional, if none given it would read from database.yml development environment setup.
# Filename should be: latest_alere_development_dump.sql
namespace :db do
  namespace :data do
    desc "Dump data into sql script file: filename=[target filename]"
    task :dump => 'environment' do
      environment = (ENV.include?("RAILS_ENV")) ? (ENV["RAILS_ENV"]) : 'development'

      db_config = ActiveRecord::Base.configurations[environment]

      user = ENV['UNAME'] || db_config['username']
      pass = ENV['PASS'] || db_config['password']

      database = ENV['DB'] || db_config['database']
      raise "Error: please give the database name (DB='<database name>') to load into." if database.blank?

      file = ENV['FILE'] || Date.today.strftime("%Y%m%d%H%M%S") + "_#{database}_#{environment}.sql"

      puts "-----> preparing..."
      puts "-----> connecting to #{environment} database..."
      puts "-----> dumping to #{file}..."
      sh "mysqldump -u #{user} -p#{pass} #{database} > #{Rails.root}/db/data/#{file}"

      puts "Done."
    end

    # rake db:data:load <UNAME>='<db_user_name>' <PASS>='<db_user_password>' FILE='<timestamped_dump_file_name>' <DB>='<db_name>' RAILS_ENV='<development | test | production>'
    # All parameters are optional except FILE where you'll give the dump file (with extension) to be loaded into the database.
    desc "Load data from sql script file: filename=[data file]"
    task(:load => :environment) do
      environment = (ENV.include?("RAILS_ENV")) ? (ENV["RAILS_ENV"]) : 'development'

      db_config = ActiveRecord::Base.configurations[environment]

      user = ENV['UNAME'] || db_config['username']
      pass = ENV['PASS'] || db_config['password']

      file = ENV['FILE'] || 'latest_on_12_12_14-new.sql' #|| 'latest_alere_development_dump.sql'
      raise "Error: please specify the data file (FILE='source.sql') to load" if file.blank?

      database = ENV['DB'] || db_config['database']
      raise "Error: please give the database name (DB='<database name>') to load into." if database.blank?

      puts "-----> preparing..."
      puts "-----> connecting to #{database}..."
      ActiveRecord::Base.establish_connection(environment)

      puts "-----> truncating tables..."
      ActiveRecord::Base.connection.tables.each do |table|
        unless table.to_s == 'schema_migrations'
          begin
             ActiveRecord::Base.connection.execute("TRUNCATE TABLE #{table}")
          rescue
            # Nothing..
          end
        end
      end

      puts "-----> importing data..."
      sh "mysql -u#{user} -p#{pass} #{database} < #{Rails.root}/db/data/#{file}"
      puts "Done."
    end

  end
end