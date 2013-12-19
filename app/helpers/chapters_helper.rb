module ChaptersHelper

  def name_of(chapter)
    link_to chapter.name, chapter_path(chapter)
  end
  
  def ancillary_info_for(chapter)
    if chapter.mode_id == 4
      text = "%a{href: '#{chapter.profile.wikipedia_url}'}\n  #{chapter.profile.historical_name}"
    else
      if chapter.subhead =~ /^\*/
        text = chapter.subhead.gsub(/^\*/, "%i\n  ").gsub(/\*$/, "")
      else
        text = chapter.subhead
      end
    end
    engine = Haml::Engine.new(text)
    engine.render
  end
  
  def observations_in(chapter)
    chapter.observations.count
  end
  
  def first_page_of(chapter)
    chapter.first_page
  end
  
  def pages_in(chapter)
    chapter.last_page - chapter.first_page < 1 ? 1 : chapter.last_page - chapter.first_page
  end

end
