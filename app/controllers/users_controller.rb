class UsersController < ApplicationController
	
	def index
		@users = User.all
		render json: @users
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	def following
		@user = User.find(params[:id])
		@following = @user.followed_users
		render json: @following
	end

	def followers
		@user = User.find(params[:id])
		@followers = @user.followers
		render json: @followers
	end

	def punch
		@user = User.find(params[:id])
		@record = @user.records.last
		if @record and !@record.to 
		    @record.to = Time.new()
		    @record.during = Time.new() - @record.from
		elsif 
			@record = Record.new(
		    	from: Time.new(),
		    	user_id: params[:id]
		    	)
		end

		@record.save()
		render json: @record
	end

	def recentRecords
  		@following = User.find(params[:id]).followed_users
  		@user_ids = Array.new
  		@following.each do |f|
  			@user_ids.push(f.id)
  		end
  		weekago = Time.now - 7*24*3600
  		@records = Record.where(user_id:@user_ids).where("to >= :to",{to: weekago}).order(during: :desc)
  		render json: @record
  	end
end
