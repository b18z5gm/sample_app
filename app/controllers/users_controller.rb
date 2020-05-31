class UsersController < ApplicationController
  
  # GET /users/:id
  def show
    
    # @user = User.first
    @user = User.find(params[:id])
    # debugger
  end
  
  # GET /users/new
  def new
    @user = User.new
  end
  
  def create
    #  (@user + given params).save
    # @user = User.new(params[:user]) 
    @user = User.new(user_params)
    if @user.save
      # 保存の成功をここで扱う。
      # succuss (valid params)
      # GET '/users/#{@user.id}' 
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
 
      # redirect_to user_path(@user)
      # redirect_to user_path(@user.id)
      # redirect_to user_path(1)  # => /users/1
      
    else
      # failure(not valid params)
      render 'new'
    end
  end
  
  private

  def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
  end
  
end
