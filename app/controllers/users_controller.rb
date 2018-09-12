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

post '/users/:id' do
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

post '/users/:id/save_image' do
  
	@filename = params[:file][:filename]
	file = params[:file][:tempfile]

	File.open("./public/img/#{@filename}", 'wb') do |f|
	f.write(file.read)
	end

	@user = current_user
	@user.update(img: @filename)
	if @user.valid?
		@message = "Image Uploaded"
		@questions = current_user.questions
		@answers = current_user.answers
		erb :'/users/show'
	else
		@message = "There was an error, the image has not beeng updated"
		erb :'/users/edit'
	end

	# erb :'/users/show'
end

