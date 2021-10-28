class Mypage::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :only_my_page_can_be_accessible!

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
  end

  private
  # only my-own-page can be accessible
  def only_my_page_can_be_accessible!
    @user = User.find(params[:id])
    redirect_to mypage_user_path(current_user) if @user != current_user
  end
end
