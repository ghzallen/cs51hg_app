module ApplicationHelper

  # Return a title on a per-page basis.

  def title
    base_title = "Surrey Wildlife Trust"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

 def logo
    image_tag("sbic_logo.png", :class => "round", :width =>"150")
  end

end
