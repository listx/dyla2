# Heed Ember's deprecation warning about including `embed ...` in
# ApplicationSeralizer. The code below is a copy-paste of the warning and
# suggested fix.
ActiveModel::Serializer.setup do |config|
  config.embed = :ids
  config.embed_in_root = true
end

# Allow handling of Mongo's "_id" field as the primary key. Instead of
#   "id":{"$oid":"54e8d2ca6b300032b0130000"}
# we just get
#   "id":"54e8d2ca6b300032b0130000"
# . See http://stackoverflow.com/q/11571777/437583.
module BSON
  class ObjectId
    alias :to_json :to_s
    alias :as_json :to_s
  end
end
