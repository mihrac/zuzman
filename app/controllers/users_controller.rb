class UsersController < ApplicationController

  	
  	
  	



  def show
    @user = User.find(params[:id])
    @title = @user.username
    @questions = @user.questions
  end


def edit
end




end
