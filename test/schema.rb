MongoMapper.connection = Mongo::Connection.new('127.0.0.1')
MongoMapper.database = "testing_tree"

class Doc
  include MongoMapper::Document
  include MMTree
  key :name, String, :required => true
  timestamps!
end

Doc.destroy_all