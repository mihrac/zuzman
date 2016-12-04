class HomeController < ApplicationController


def show


end

def index
		    @questions = Question.all
		    @blogs = Blog.all

	end



end