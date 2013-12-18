class Observation < ActiveRecord::Base
  belongs_to :place
  belongs_to :chapter
  belongs_to :mode
  belongs_to :page
end
