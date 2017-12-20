class UsersController < ApplicationController

  def edit
  end

  def update
    User.find(params[:id]).update(user_params)
    redirect_to :root, notice: 'Your user infomation was successfully updated'
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :email,
    )
  end

end
