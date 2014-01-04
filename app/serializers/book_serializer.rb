class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :first_page, :last_page
  has_many :chapters, embed: :ids
end