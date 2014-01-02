class ObservationSerializer < ActiveModel::Serializer
  attributes :id, :text, :dialogue, :created_at, :updated_at, :place_id, :page_id, :mode_id, :chapter_id, :place_name_in_text, :adjective, :not_a_place, :notes, :order_in_page
end