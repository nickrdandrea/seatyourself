class UsersController < ApplicationController
  def new
      @user = User.new
  end

  def create
      @user = User.new(user_params)
    if @user.save
        redirect_to_reservation_url, notice: "Signed up"
    else
        render "new"
    end
  end

   def edit
     @user = User.find(params[:id])
   end

   def update
    @user = User.find(params[:id])

    if @User.update_attributes(product_params)
      redirect_to_users_url(@user)
    else
      render :edit
    end
  end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to_users_url
    end

  private
   def user_params
     params.require(:user).permit(:first_name, :last_name :email, :phone :password, :password_confirmation, :username)
   end
  end
 end
