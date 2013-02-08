require 'rubygems'
require 'mongo'

include Mongo

class MongoDbTool
  def connect
    @client = MongoClient.new('localhost', 27017)
    @db = @client['mobilemash']
    @coll = @db['sessions']
  end
end