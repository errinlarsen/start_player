require 'bundler/setup'
require 'mongo_mapper'

MongoMapper.config = {
  :development  => {"uri" => "mongodb://localhost/start_player-dev"},
  :test         => {"uri" => "mongodb://localhost/start_player-test"},
  :production   => {"uri" => ENV["MONGOHQ_URL"]}
}

Dir[File.expand_path( File.dirname( __FILE__ ) + '/models/*.rb' )].each { |f| require f }
