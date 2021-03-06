bind 'tcp://0.0.0.0:80'
environment ENV['RAILS_ENV']
threads 1,1
workers 1

if ENV['RAILS_ENV'] == 'development'
  worker_timeout 24*60*60
end

before_fork do
  ActiveRecord::Base.connection.disconnect!
end 
on_worker_boot do
  ActiveRecord::Base.establish_connection
end

plugin :tmp_restart
preload_app!
