require 'sinatra';
require "sinatra/activerecord"

get '/' do
  'this is the home page'
end


set :database, "sqlite3:///catalog.db"

class Customer < ActiveRecord::Base
end

class Service < ActiveRecord::Base
end
