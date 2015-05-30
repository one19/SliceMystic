module ApplicationHelper
                                                                                                                                                     
def intellinav
    "<li>Hello World</li>"
    nav = ''

    if @current_user.present? && @current_user.admin?
      nav += '<li>' +  link_to('Show users', users_path) + '</li>'
    end

    if @current_user.present?
      nav += '<li>' + link_to("Edit profile", edit_users_path(@current_user)) + '</li>'
      nav += '<li>' + link_to("Log out #{ @current_user.name }", login_path, :method => :delete) + '</li>'
    else
      nav += '<li>' + link_to('Sign up', new_user_path) + '</li>'
      nav += '<li>' + link_to('Login', login_path) + '</li>'
    end

    nav
  end

end
