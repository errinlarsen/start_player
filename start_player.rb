require File.expand_path( File.dirname( __FILE__ ) + '/boot' )
require 'sinatra'

# Require controllers
Dir[File.expand_path( File.dirname( __FILE__ ) + '/controllers' + '/*' )].each { |f| require f }

# Connect to MongoDB
MongoMapper.connect(Sinatra::Base.environment)

# Set the Sinatra configuration
configure do
    set :views, "#{File.dirname(__FILE__)}/views"
      set :public, "#{File.dirname(__FILE__)}/public"
end
