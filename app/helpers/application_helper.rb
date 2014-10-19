module ApplicationHelper
  def nav_lync(label, path)
     html = "<li class= #{'active' if current_page? path}>
          #{link_to label, path}
     </li>".html_safe
  end
end
