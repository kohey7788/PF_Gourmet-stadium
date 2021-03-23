class Public::GourmetCommentsController < ApplicationController
  def create
    byebug
    comment = GourmetComment.new(gourmet_comment_params)
    comment.gourmet_id = params[:gourmet_id]
    comment.visitor_id = current_visitor.id
    comment.save
    #redirect_back(fallback_location: YOUR_PAGE)
    redirect_to gourmet_path(params[:gourmet_id])
  end

  private

  def gourmet_comment_params
    params.require(:gourmet_comment).permit(:comment)
  end
end
