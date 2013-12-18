class Chapter < ActiveRecord::Base
  has_many :observations
  belongs_to :book
  belongs_to :mode
end
