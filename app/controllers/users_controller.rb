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
    @user.save
    if check_winner(@user) == true
      flash[:success] = "You won a prize!"
    else
      flash[:warning] = "You lose, please try again tomorrow"
    end
    redirect_to @user
  end

  private

  def check_winner(user)
    @winner = Winner.last

    if user.id == @winner.user.id
      return true
    else
      return false
    end
  end

end
