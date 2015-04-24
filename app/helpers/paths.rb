# Change this to be your homepage path
def homepage
  if current_user
    "/herds"
  else
    "/"
  end
end
# Calls the current user or defines the current user
def current_user
  @user ||= User.find(session[:user_id]) if session[:user_id]
end
# This logs out the user, change it to whatever your logout method will be
def user_logout
 "/users/logout"
end
# Sets session to nil
def session_logout
  session[:user_id] = nil
end
# User login page, change Path if need be
def user_login
  "/users/login"
end
# User Creations page, change Path if need be
def user_new
  "/users/new"
end
# Default User Homepage
def user_homepage
  "/users/#{current_user.id}"
end
