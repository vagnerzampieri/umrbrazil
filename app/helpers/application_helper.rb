# encoding: UTF-8
module ApplicationHelper
  def menu
    html = selected_menu('Site', root_path)
    html << selected_menu(I18n.t(:dashboard), dashboard_path, 'dashboard')
    html << selected_menu(I18n.t(:users), users_path, 'users')
    raw html
  end

  def outgoing_menssage
    if notice
      raw "<h4 class='alert_success'>#{notice}</h4>"
    end
  end

  def arrow_left
    image_tag('icons/116767-matte-blue-and-white-square-icon-arrows-arrow-thick-left.png', height: '50px', width: '50px')
  end

  def arrow_right
    image_tag('icons/116768-matte-blue-and-white-square-icon-arrows-arrow-thick-right.png', height: '50px', width: '50px')
  end

  def submit_link(form)
    if params[:action] == 'new'
      form.submit(I18n.t(:create), class: 'btn btn-success')
    else
      form.submit(I18n.t(:update), class: 'btn btn-primary')
    end
  end

  private
  def selected_menu(name, path, controller = nil)
    if params[:controller] == controller
      "<li class='active'>#{link_to name, path}</li>"
    else
      "<li>#{link_to name, path}</li>"
    end
  end
end
