require File.expand_path( File.dirname( __FILE__ ) + '/../boot' )
require 'sinatra'
require 'rack/test'
require 'database_cleaner'

Sinatra::Base.set :environment, :test
Sinatra::Base.set :run, false
Sinatra::Base.set :raise_errors, true
Sinatra::Base.set :logging, false

require File.expand_path( File.dirname( __FILE__ ) + '/../start_player' )

RSpec.configure do |config|

  config.before( :suite ) do
    DatabaseCleaner.strategy = :truncation
  end

  config.after( :each ) do
    DatabaseCleaner.clean
  end

end
