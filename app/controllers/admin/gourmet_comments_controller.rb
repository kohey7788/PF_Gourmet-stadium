class Admin::GourmetCommentsController < ApplicationController
  def destroy
    GourmetComment.find_by(id: params[:id],gourmet_id: params[:gourmet_id]).destroy
    redirect_back(fallback_location: admin_gourmet_path(params[:gourmet_id]))
  end
end
