class Place < ActiveRecord::Base
  has_many :observations
  validates :name, uniqueness: { case_sensitive: false }
#   validates :variants, presence: true

  def add_variants(place_name_in_text)
  end

  def add_geocoding_notes(geocoding_notes)
  end

end
