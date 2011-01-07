module ApplicationHelper
  
  def tab_class controller_name, tab_name
    if controller_name == tab_name
      return "active"
    else
      return ""
    end
  end
      
end
