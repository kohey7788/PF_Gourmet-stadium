class Public::GourmetCommentsController < ApplicationController
  def create
    @gourmet = Gourmet.find(params[:gourmet_id])
    # @gourmet_comment = GourmetComment.new(gourmet_comment_params)
    @gourmet_comment = @gourmet.gourmet_comments.build(gourmet_comment_params)
    @gourmet_comment.gourmet_id = params[:gourmet_id]
    @gourmet_comment.visitor_id = current_visitor.id
    @gourmet_comment.save
    render "index"
    # redirect_back(fallback_location: gourmet_path(params[:gourmet_id]))
    # redirect_to gourmet_path(params[:gourmet_id])
  end

  def destroy
    # GourmetComment.find_by(id: params[:id],gourmet_id: params[:gourmet_id]).destroy
    # redirect_back(fallback_location: admin_gourmet_path(params[:gourmet_id]))
    @gourmet_comment = GourmetComment.find(params[:id])
    @gourmet_comment.destroy
    render "index"
  end

  private

  def gourmet_comment_params
    params.require(:gourmet_comment).permit(:comment, :gourmet_id, :gourmet_comment_id)
  end
end
