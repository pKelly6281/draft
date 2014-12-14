class UsersController < ApplicationController
  def new
  	@user = User.new
  end
  #submit sends automattically to create
  def create
  	@user = User.new(user_params)
  	#if able to save to db
  	if @user.save
  		flash[:success] = "User created"
  		redirect_to allusers_path
  	else
  		redirect_to root_path
  	end
  end

  def index
  end
  private
  		#no idea what this does
  		def user_params
  			params.require(:user).permit(:name)
  		end
end
