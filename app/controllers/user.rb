get '/users/login' do
  @errors = nil
  erb :"users/login"
end

post '/users/login' do
  user = User.authenticate(params[:user][:username], 
                           params[:user][:password])
  if user
    session[:user_id] = user.id
    redirect homepage
  else
    @errors = ["Invalid username/password"]
    erb :index
  end
end

get '/users/new' do
  @user = User.new
  erb :"users/new"
end

post '/users/new' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect homepage
  else
    @user
    @errors = @user.errors.full_messages
    erb :"users/new"
  end
end

get '/users/logout' do
  session_logout
  redirect homepage
end

get '/users/:id' do
  erb :"users/show"
end
