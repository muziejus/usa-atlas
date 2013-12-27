class Book < ActiveRecord::Base
  has_many :chapters
  
  def to_param
    "#{name}".downcase.gsub(/\W+/, "-").gsub(/^[-]+|[-]$/, "").strip
  end
  
end
