class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :name, :created_at, :updated_at, :subhead, :first_page, :last_page, :book_id, :mode_id
end