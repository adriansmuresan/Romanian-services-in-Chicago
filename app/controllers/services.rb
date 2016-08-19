
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

# get '/services' do

# end

post '/services' do
  category = Category.find_by(title: params[:category])
  cat_id = category.id
  @new_service = Service.new(title: params[:title], description: params[:description], contact_info: params[:contact_info], category_id: cat_id, user_id: session[:user_id])
  @user = User.find(session[:user_id])
  # @user_services = @user.services
  if @new_service.save
    puts @user.services
    @user_services = @user.services
    erb :"/users/show"
  else
    @errors = @new_service.errors.full_messages
    erb :'/services/new'
  end
end

put '/services/:id' do

end

delete '/services/:id' do
  service_to_delete= Service.find(params[:id])
  service_to_delete.destroy!
  redirect '/users/#{session[:user_id]}'
end
