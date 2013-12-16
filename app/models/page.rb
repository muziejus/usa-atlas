class Page < ActiveRecord::Base
  has_many :observations
  validates :number, uniqueness: true
end
