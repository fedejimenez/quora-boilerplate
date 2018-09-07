get '/sessions/new' do
	erb :"sessions/new"
end

post '/sessions' do
	user = User.authentication(params["user"]["email"], params["user"]["password"])
	if user != nil
		session[:id] = user.id
		redirect '/'
	else
		@message = "Invalid email or password"
		erb :"sessions/new"
	end
end

post '/signup' do
	user = User.new(params["user"])
	if user.valid?
		user.save
		session[:id] = user.id
		redirect '/'
	else
		@message = user.errors.full_messages
		@aux = "signup"
		erb :"sessions/new"
	end
end

get '/login' do
	@aux = "login"
	erb :"sessions/new"
end

get '/signup' do
	@aux = "signup"
	erb :"sessions/new"
end

get '/logout' do
	session[:id] = nil
	redirect '/'
end