class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :historical_name, :created_at, :updated_at, :wikipiedia_url, :chapter_id
end