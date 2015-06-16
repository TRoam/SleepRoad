class RecordsController < ApplicationController
	def index
		@records = User.find(params[:user_id]).records.order(updated_at: :desc)
		render json:@records
	end
end
