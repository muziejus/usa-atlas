class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at, :first_page, :last_page
end