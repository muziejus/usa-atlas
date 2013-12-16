class Place < ActiveRecord::Base
  has_many :observations
  validates :name, uniqueness: { case_sensitive: false }
  validates :variants, presence: true
end
