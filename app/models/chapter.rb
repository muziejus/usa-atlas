class Chapter < ActiveRecord::Base
  has_many :observations
  has_one :profile
  belongs_to :book
  belongs_to :mode

  def to_param
    "#{id}-#{name}".downcase.gsub(/\W+/, "-").gsub(/^[-]+|[-]$/, "").strip
  end

end
