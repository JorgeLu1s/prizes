class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

  def create
    @user = User.new()
    @user.email = params[:email]
    if @user.save
      if @user.winner? == true
        flash[:success] = "You won a prize!"
      else
        flash[:warning] = "You lose, please try again tomorrow"
      end
      redirect_to @user
    end
  end

end
