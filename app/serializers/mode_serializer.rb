class ModeSerializer < ActiveModel::Serializer
  attributes :id, :name #, :created_at, :updated_at
  has_many :chapters, embed: :ids
end