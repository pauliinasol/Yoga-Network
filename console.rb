require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)

require './db_config'
require './models/studio'
require './models/user'


binding.pry
