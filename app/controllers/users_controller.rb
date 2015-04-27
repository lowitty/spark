class UsersController < ApplicationController
  def show
    #@user = User.find(params[:id])
    #logger.debug "Person attributes hash: #{@user.attributes.inspect}"
  end
  
  def edit
    
  end
  
  def update
    @user = current_user
    #@name = params[:user][:username]
    #update/set username
    if params[:user][:username]
      @user.update_attribute(:username, params[:user][:username])
    end
    
    #update/set description
    if params[:user][:description]
      @user.update_attribute(:description, params[:user][:description])
    end
    
    #update/set one_liner
    if params[:user][:one_liner]
      @user.update_attribute(:one_liner, params[:user][:one_liner])
    end
    
    #update/set avatar
    if params[:user][:avatar]
      @user.update_attribute(:avatar, params[:user][:avatar])
    end
    
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
      flash[:success] = "Successfully created the user!"
      #
      #
      #
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def updateavatar
    @user = User.find(params[:id])
    @user.update_attribute(:avatar, params[:user][:avatar])
  end
  
  private

    def user_params
      params.require(:user).permit(:username, :email, :password,
                                   :password_confirmation, :avatar)
    end
end
