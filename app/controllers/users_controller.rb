class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

  def create
    @user = User.new()
    @user.email = params[:user][:email]
    if @user.save
      if @user.winner?
        flash[:success] = "You won a "+@user.winners.last.prize
      else
        flash[:warning] = "You lose, please try again tomorrow"
      end
      redirect_to @user
    else
      render "new"
    end
  end

end
