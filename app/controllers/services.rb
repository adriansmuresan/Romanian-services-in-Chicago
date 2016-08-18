
get '/services/new' do
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :'/services/new'
end

get '/services/:id' do
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  @service = Service.find(params[:id])
  erb :'/services/show'
end

post '/services' do
  @new_service = Service.new(title: params[:title], description: params[:description], contact_info: params[:contact_info])
  if @new_service.save
    erb:'/users/show'
  else
    # Aici am ramas!!!########################
    # !Nu uita sa scrii erorile si in erb services/new
  end
end
