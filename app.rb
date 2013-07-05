require 'sinatra'
require "sinatra/activerecord"
require "./helpers"

get "/" do
  @customers = Customer.order("created_at DESC")
  erb :"customers/index"
end


set :database, "sqlite3:///catalog.db"

class Customer < ActiveRecord::Base
  has_many :services
end

class Service < ActiveRecord::Base
  belongs_to :customer
end



# Respont_to JSON  
# sin vistas por que es un cliente ,
