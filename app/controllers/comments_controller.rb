class CommentsController < ApplicationController
	before_action :find_commentable
	before_action :authenticate_user!


	def new
		@comment = Comment.new
	end


	def create

		@comment = @commentable.comments.new comment_params
		@comment.user = current_user
			if @comment.save
        	redirect_to :back, notice: 'Your comment was successfully posted!'
      		else
        	redirect_to :back, notice: "Your comment wasn't posted!"
      		end
    	end
	


	
	def destroy
	end



	#voting system ---------------------------

def upvote
  @comment = Comment.find(params[:id])
  @comment.upvote_by current_user
  redirect_to :back
end

def downvote
  @comment = Comment.find(params[:id])
  @comment.downvote_by current_user
  redirect_to :back
end


private

    def comment_params
      params.require(:comment).permit(:body)
    end

    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Question.find_by_id(params[:question_id]) if params[:question_id]
      @commentable = Blog.find_by_id(params[:blog_id]) if params[:blog_id]

    end


end
