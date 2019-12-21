class UsersController < ApplicationController
   before_action :set_target_user, only: %i[me edit update]
  
  def loginpage
  end
  
  def new
    @user =User.new(flash[:user])
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to mypage_path
    else
      redirect_back fallback_location: new_user_path, flash: {
        user: user,
        error_messages: user.errors.full_messages
      }
    end
  end

  def me
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      redirect_to mypage_path, flash: { notice: "「#{@user.name}」のマイページが更新されました"}
    else
      redirect_back fallback_location: edit_user_path(@user)
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation, :age, :profile_image, :sex, :birthday, :height, :body_weight, :self_introduction, :commit)
  end
  
  def set_target_user
     @user = User.find(session[:user_id])
  end
end
