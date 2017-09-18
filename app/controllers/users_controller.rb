class UsersController < ApplicationController
  def new
    @user = User.new
    render 'new'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      UserMailer.signup_confirmation(@user).deliver_now
      flash[:success] = "Signed up successfully"
      redirect_to @user
    else
      flash[:error] = "Sign up failed. Username,
      valid email and password required."
      redirect_to new_user_url
    end
  end

  def show
    if User.exists?(params[:id])
      @user = User.find(params[:id])
      render 'show'
    else
      redirect_to new_user_url
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :address, :tel_no,
    :password, :password_confirmation)
  end
end
