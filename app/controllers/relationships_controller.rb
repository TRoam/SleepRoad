class RelationshipsController < ApplicationController

	def index
	    @user = User.find(params[:user_id])
	    @followed_users = @user.followed_users
	    render json: @followed_users
	end

	def create
		current_user = User.find(params[:user_id])
	    @user = User.find(params[:relationship][:followed_id])
	    @relation = Relationship.create(
	    	followed_id:current_user.id,
	    	follower_id:@user.id
	    	)
	    if @relation 
	    	render json: @relation
	    end
	end

	def destroy
		@relationship = Relationship.where("followed_id = ? AND follower_id = ?",params[:id],params[:user_id])
		if !@relationship.blank?
			@relationship[0].destroy
		end
		render json: @relationship
	end
end
