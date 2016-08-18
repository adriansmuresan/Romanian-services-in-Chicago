get '/categories/:id' do
  if session[:user_id]
    puts session[:id]
    @user = User.find(session[:user_id])
  end
  @category = Category.find(params[:id])
  @cat_services = @category.services
  erb :'/services/index'
end
