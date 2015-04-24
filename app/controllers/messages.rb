get '/messages/new' do
  if current_user
    @user = current_user
    erb :"messages/new"
  else
    redirect "/"
  end
end

post '/messages/new' do
  puts params
  reciever = User.find(params[:reciever])
  text= params[:message]
  message = Message.new(sender: current_user, reciever: reciever, message: text)
  if message.save
    redirect "/messages/new"
  end
end
