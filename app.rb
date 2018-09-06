require_relative './config/init.rb'
require_relative './models/user.rb'

# # set :run, true

get "/" do
	User.all
    erb :'home'
end

get "/signup" do
    erb :'signup'
end

post '/signup' do
	@user = User.new(first_name: params[:first_name], last_name: params[:last_name],
					 email: params[:email], password: params[:password])
	if @user.save
	# what should happen if the user is saved?
	erb :'user'
	else
	# what should happen if the user keyed in invalid date?

	end
end  


get "/user" do
    erb :'user'
end

post '/user' do
    erb :'user'
end


get "/login" do
	erb :"/login"
  # apply a authentication method to check if a user has entered a valid email and password
  # if a user has successfully been authenticated, you can assign the current user id to a session
end

post '/login' do

	# if @user.save
	# what should happen if the user is saved?
	erb :"user"
	# else
	# what should happen if the user keyed in invalid date?

	# end
end  

get "/logout" do
  session[:email] = nil
  redirect "/"
end

post "/logout" do
	erb :"/logout"
  # kill a session when a user chooses to logout, for example, assign nil to a session
  # redirect to the appropriate page
end





