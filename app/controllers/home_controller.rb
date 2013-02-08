include Mongo

class HomeController < ApplicationController
  def index
    @client = MongoClient.new('localhost', 27017)
    @db = @client['mobilemash']
    @coll = @db['sessions']
    @mash_session = @coll.find_one
  end
end
