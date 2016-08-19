
### add new user
get '/users/new' do
	erb :'/users/new'
end

### add new user
get '/login' do
	erb :'/users/login'
end

### show user
get '/users/:id' do
	@user = User.find(params[:id])
	@user_services = @user.services
	erb :'/users/show'
end


#######################################
### log in user
post '/login' do
	# puts params[:username]
	# puts params[:password]
	@user = User.authenticate(params[:username], params[:password])

	if @user
		session[:user_id] = @user.id
		redirect '/'
	else
		@errors = ["Login Failed. Please Try Again"]
		erb :'/users/login'
	end
end

### log out, reset session
post '/logout' do
	@user = nil
	session.delete(:user_id)
	redirect '/'
end

### save form
post '/users/new' do
	#check username validity
	if params[:username].length == 0
		@errors = ["Username must be not empty!"]
		erb :'/users/new'
		#check password validity
	elsif params[:password].length >=6
		@new_user = User.create(username: params[:username], password: params[:password])
		if @new_user.save
			session[:user_id] = @new_user.id
		    redirect "/"
	    else
	    	@errors = @new_user.errors.full_messages
			erb :'/users/new'
	    end
	else #password failed, less than 6
		@errors = ["Password must be at least 6 characters long!"]
		erb :'/users/new'
	end
end

