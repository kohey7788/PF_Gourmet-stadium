class Public::GourmetsController < ApplicationController
  def new
    @gourmet = Gourmet.new
    @stadiums = Stadium.all
  end

  def create
    @gourmet = Gourmet.new(gourmet_params)
    @gourmet.visitor = current_visitor
    @gourmet.save
    redirect_to gourmets_path
  end

  def index
    @gourmets = Gourmet.all
  end

  def show
    @gourmet = Gourmet.find(params[:id])
    @gourmet_comment = GourmetComment.new
  end

  def destroy
    @gourmet = Gourmet.find(params[:id])
    @gourmet.destroy
  end

  private
  def gourmet_params
    params.require(:gourmet).permit(:stadium_id, :name ,:introduction, :image)
  end
end
