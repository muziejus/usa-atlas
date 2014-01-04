class PageSerializer < ActiveModel::Serializer
  attributes :id, :number, :created_at, :updated_at
  has_many :observations, embed: :ids
end