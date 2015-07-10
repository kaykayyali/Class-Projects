class CommentsController < ApplicationController
	def create
		concert = Concert.find(params[:concert_id])
		comment = concert.comments.new(comment_params)
		if comment.save
			flash[:notice] = "Success!"
		end
			redirect_to concert_path(params[:concert_id])

	end
	private
	def comment_params
		return params.require(:comment).permit(:title, :description)
	end
end
