class UsersController < ApplicationController

	before_action :set_event,only: [:update,:destroy,:edit]

	def index
		@users =User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to root_path
	end

	def edit
	end

	def update
	    @user.update(user_params)
	    redirect_to root_path
	end

	def destroy
  	  @user.destroy
  	  redirect_to users_path
   end

   def set_event
   	@user = User.find(params[:id])
   end

    private
     def user_params
   	   params.require(:user).permit(:name,:age,:city)
     end
end
