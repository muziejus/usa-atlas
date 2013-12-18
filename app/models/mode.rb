class Mode < ActiveRecord::Base
  has_many :observations
  has_many :chapters
  has_many :profiles
end
