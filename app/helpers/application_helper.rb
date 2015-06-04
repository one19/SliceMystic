module ApplicationHelper

def intellinav
    "<li>Hello World</li>"
    nav = ''

    if @current_user.present? && @current_user.admin?
      nav += '<li>' +  link_to('Show Users', users_path) + '</li>'
      nav += '<li>' + link_to('Show Pies', '/pies/admin') + '<i class="icon-large icon-pie-chart"></i></li>'
      nav += '<li>' + link_to('Show Websites', '/websites') + '<i class="icon-large icon-pizza"></i></li>'
      nav += '<li>' + link_to('Show Updates', '/updates') + '</li>'
    end
    if @current_user.present?
      nav += '<li class="col-md-2 col-md-offset-4">' + link_to("My Pies", '/pies') + '<i class="icon-large icon-pie-chart"></i></li>'
      nav += '<li class="col-md-2">' + link_to("Edit profile", edit_users_path(@current_user)) + '</li>'
      nav += '<li class="col-md-2 btn btn-default" type="submit">' + link_to("Log out: #{ @current_user.name }", login_path, :method => :delete) + '</li>'
    else
      nav += '<li class="col-md-2">' + link_to('Sign up', new_user_path) + '</li>'
      nav += form_tag('/login')
      nav += '<li class="col-md-2 col-md-offset-3">' + label_tag('username') + text_field_tag('username') + '</li>'
      nav += '<li class="col-md-2">' + label_tag('password') + password_field_tag('password') + '</li>'
      nav += '<li class="col-md-1 btn btn-default">' + submit_tag('Log In') + '</li>' + '</form>'
    end
    nav
  end
end

def homefiller
  content = ''

  @all_ups.each do |up|
    content += "<div class='update #{@all_ups.index(up)}'>"
    if up.image.present?
      content += "<img class='img content img-responsive center-block' src=#{up.image}>"
    else
      content += "<p class='text content'>#{up.content}</p>"
    end
    content += "<h3 class='uptitle'>" + link_to("#{up.title}", "#{up.url}")
    content += '</div>'
  end
    
  content
end
