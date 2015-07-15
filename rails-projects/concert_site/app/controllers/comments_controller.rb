class CommentsController < ApplicationController
	def create
		concert = Concert.find(params[:concert_id])
		comment = concert.comments.new(comment_params)
		if comment.save
			flash[:notice] = "Success!"
		end
			redirect_to concert_path(params[:concert_id])

	end
	def send_comments
		artist = Concert.find(params[:id])
		render(:json => artist.comments)
	end

	def add_comments
		concert = Concert.find(params[:id])
		comment = concert.comments.new(:title => params[:title],:description => params[:description] )
		p concert
		p comment
		if comment.save 
			puts " SAVED"
		end
		render nothing: true
		
	end

	private
	def comment_params
		return params.require(:comment).permit(:title, :description)
	end
end
