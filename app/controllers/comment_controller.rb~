class CommentController < ApplicationController

	def create
		@book = Book.find(params[:book_id])
		@comment=@book.comments.create(comment_params)
		@comment.save
			redirect_to home_path(@book)
	end
	 
  private
    def comment_params
      params.require(:comment).permit(:comment,:user_id,:book_id)
    end 
end
