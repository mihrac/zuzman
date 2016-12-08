class HomeController < ApplicationController


def show
	@quesiton = Question.find(params[:id])
	@user = User.find(params[:id])
	@blog = Blog.find(params[:id])


end

def index
		    @questions = Question.all
		    @blogs = Blog.all
		    @users = User.all

	end



end