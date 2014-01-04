class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :historical_name, :wikipedia_url, :chapter_id
end