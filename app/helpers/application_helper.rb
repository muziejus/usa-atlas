module ApplicationHelper

  def full_title(page_title)
    base_title = "Literary Atlas of U.S.A."
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def chapter_name(id)
    Chapter.find(id).name unless id.nil?
  end

  def place_name(id)
    Place.find(id).name unless id.nil?
  end

end
