# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  
  def active_icon(state)
    if state
      image_tag "icon-yes.gif"
    else
      image_tag "icon-no.gif"
    end
  end
  
  def empty_select
    [["", ""]]
  end
  
end
