class Picker
  include MongoMapper::Document
  
  key :name, String
  key :desc, String
end
