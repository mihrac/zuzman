class UsersController < ApplicationController
  def showmhow
  	@user = User.find(params[:id])
  	@user_questions = @user.questions
  	
  	
  	

  end


  def show
    @user = User.find(params[:id])
    @title = @user.username
    @questions = @user.questions
  end







end
