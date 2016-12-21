desc "This task is called by the Heroku scheduler add-on"

task :clean => :environment do
  puts Status.delete_all
end
