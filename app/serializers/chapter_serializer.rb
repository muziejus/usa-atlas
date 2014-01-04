class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :name, :subhead, :first_page, :last_page, :book_id, :mode_id
  has_one :profile
  has_many :observations, embed: :ids
end