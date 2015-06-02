module ApplicationHelper

def intellinav
    "<li>Hello World</li>"
    nav = ''

    if @current_user.present? && @current_user.admin?
      nav += '<li>' +  link_to('Show users', users_path) + '</li>'
      #nav += '<li>' + link_to('Admin Pie Tab', pies_path) + '</li>'
      #nav += '<li>' + link_to('Admin Website Tab'), websites_path) + '</li>'
      #nav += '<li>' + link_to('Admin Update Tab'), updates_path) + '</li>'
    end

    if @current_user.present?
      nav += '<li>' + link_to("My Pies", '/pies') + '</li>'
      nav += '<li>' + link_to("Edit profile", edit_users_path(@current_user)) + '</li>'
      nav += '<li>' + link_to("Log out #{ @current_user.name }", login_path, :method => :delete) + '</li>'
    else
      nav += '<li>' + link_to('Sign up', new_user_path) + '</li>'
      nav += form_tag('/login')
      nav += '<li>' + label_tag('username') + text_field_tag('username') + '</li>'
      nav += '<li>' + label_tag('password') + password_field_tag('password') + '</li>'
      nav += '<li>' + submit_tag('Log In') + '</li>' + '</form>'
    end
    nav
  end
end

def homefiller
  content = ''

  @all_ups.each do |up|
    content += "<div class='update #{@all_ups.index(up)}'>"
    if up.image.present?
      content += "<img class='img content' src=#{up.image}>"
    else
      content += "<p class='text content'>#{up.content}</p>"
    end
    content += "<h3 class='uptitle'>" + link_to("#{up.title}", "#{up.url}")
    content += '</div>'
  end
    
  content
end
