class Public::GourmetsController < ApplicationController
before_action :authenticate_visitor!, only: [:new]

  def new
    @gourmet = Gourmet.new
    @stadiums = Stadium.all
  end

  def create
    @gourmet = Gourmet.new(gourmet_params)
    @gourmet.visitor = current_visitor
    # binding.pry
    if @gourmet.save
      redirect_to gourmets_path
    else
      @stadiums = Stadium.all
      render "new"
    end
  end

  def index
    if params[:q].present?
    @q = Gourmet.ransack(params[:q])
    @gourmets = @q.result(distinct: true).page(params[:page]).per(5)
    else
    params[:q] = { sorts: 'created_at desc' }
    @q = Gourmet.ransack(params[:q])
    @gourmets = @q.result(distinct: true).page(params[:page]).per(5)
    end
    @stadiums = Stadium.all
    # @gourmets_all = Gourmet.all
  end

  def show
    @gourmet = Gourmet.find(params[:id])
    @gourmet_comment = GourmetComment.new
  end

  def destroy
    @gourmet = Gourmet.find(params[:id])
    @gourmet.destroy
    redirect_to gourmets_path
  end

  private
  def gourmet_params
    params.require(:gourmet).permit(:stadium_id, :name ,:introduction, :image)
  end
end
