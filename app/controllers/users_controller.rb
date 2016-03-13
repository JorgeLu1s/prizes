class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

  def create
    @user = User.new(params[:id])
    @user.save
    redirect_to @user
  end

end
