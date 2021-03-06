class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :variants, :latitude, :longitude, :created_at, :updated_at, :geocoding_notes
  has_many :observations, embed: :ids
end