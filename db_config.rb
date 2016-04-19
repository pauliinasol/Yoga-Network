require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'yoganetwork'
}

ActiveRecord::Base.establish_connection(options)
