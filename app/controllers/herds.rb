get "/herds" do
  @herds = Herd.all
  erb :"herds/index"
end

post '/herds' do
  puts params
  herd = Herd.find_by(params)
  new_member = UsersHerd.new(user: current_user, herd: herd)
  if new_member.save
    redirect "/herds/#{herd.id}"
  else
    @errors = new_member.errors.full_messages
    erb :"herds/index"
  end
end

get '/herds/new' do
  @herd = Herd.new
  erb :"herds/new"
end

post '/herds/new' do
  puts params[:herd]
  herd = Herd.new(params[:herd])
  new_member = UsersHerd.new(user: current_user, herd: herd)
  if herd.save && new_member.save
    redirect "/herds/#{herd.id}"
  else
    @errors = herd.errors.full_messages
    erb :"herds/new"
  end
end

get '/herds/:id' do
  @herd = Herd.find(params[:id])
  erb :"herds/show"
end
