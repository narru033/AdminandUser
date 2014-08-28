class UserController < ApplicationController
	skip_before_action :verify_authenticity_token
  def edit
  	@user = User.find(params[:id])
  end

  def show
  	@user = User.find(params[:id])
  end
  
  def update
  	@user = User.find(params[:id])
    if @user.update(user_params)
      	render :show
     else
        render :edit
     end
  end
  private
  def user_params
      params.require(:user).permit(:user_name, :email, :password, :password_confirmation, :first_name, :last_name, :gender,:date_of_birth,:mobile_number,:address)
    end
end
