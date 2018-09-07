require_relative '../models/user.rb'
require_relative '../models/answer.rb'
require_relative '../models/answer_vote.rb'

get '/users/:id' do
	@user = User.find(params[:id])
	@questions = @user.questions
	@answers = @user.answers
	erb :'users/show'
end

get '/users/:id/edit' do
	erb :'users/edit'
end

put '/users/:id' do
	@user = current_user
	@user.update(params[:user])
	if @user.valid?
		@message = "Profile Updated"
		@questions = current_user.questions
		@answers = current_user.answers
		erb :'/users/show'
	else
		@message = "Invalid Input, Profile not being updated"
		erb :'/users/edit'
	end
end

# post '/users/save_image' do
# 	@user = current_user
# 	@user.update(params[:img])
# 	if @user.valid?
# 		@message = "Profile Image Updated"
# 		@questions = current_user.questions
# 		@answers = current_user.answers
# 		erb :'/users/show'
# 	else
# 		@message = "Invalid file, Profile not being updated"
# 		erb :'/users/edit'
# 	end
# end

