class UsersController < ApplicationController


  def new
    @user = UserInformation.new
  end

  def index
    @users = UserInformation.all
  end

  def create
    @user = UserInformation.new(permit_params)
    if @user.save
      flash[:notice] = 'User information created'
      redirect_to :root
    else
      render 'new'
    end
  end

  def display_backup
    @users = UserInformationBackup.all
  end

  private

  def permit_params
    params.require(:user_information).permit(:first_name, :last_name, :secret_message)
  end

end
