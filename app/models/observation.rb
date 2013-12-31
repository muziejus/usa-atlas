class Observation < ActiveRecord::Base
  belongs_to :place
  belongs_to :chapter
  belongs_to :mode
  belongs_to :page
  
  validates :place_id, presence: true
  validates :chapter_id, presence: true
  validates :text, length: { maximum: 25000 }
  validates :place_name_in_text, length: { maximum: 256, minimum: 1 }
  validates :notes, length: { maximum: 25000 }

  def page_number
    if page_id.nil? || page_id == 0
      0
    else
      Page.find(page_id).number
    end
  end

  def update_parent_ids(options = {})
    unless options.empty?
      self.place_id = Place.find_or_create_by(name: options[:place]).id
      self.page_id = Page.find_or_create_by(number: options[:page]).id
      self.chapter_id = Chapter.where("mode_id = ? AND first_page <= ? AND last_page >= ?", self.mode_id, options[:page], options[:page]).first.id
      self
    end
  end

end
