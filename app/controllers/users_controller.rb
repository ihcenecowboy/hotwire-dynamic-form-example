class UsersController < ApplicationController
  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.fetch(:user, {}).permit(:country, :community, :state, :province, :language, :gdpr_opt_out, :name)
  end
end