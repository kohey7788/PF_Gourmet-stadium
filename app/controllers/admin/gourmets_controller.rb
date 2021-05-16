class Admin::GourmetsController < Admin::ApplicationController
  def index
    @gourmets = Gourmet.all.page(params[:page]).per(5)
  end

  def show
    @gourmet = Gourmet.find(params[:id])
  end

  def destroy
    @gourmet = Gourmet.find(params[:id])
    @gourmet.destroy
    redirect_to admin_gourmets_path
  end

end
