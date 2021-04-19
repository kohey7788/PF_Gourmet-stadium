class Admin::GourmetsController < Admin::ApplicationController
  def index
    @gourmets = Gourmet.all.page(params[:page]).per(5)
  end

  def show
    @gourmet = Gourmet.find(params[:id])
  end

  # def destroy
  #   @gourmet = Gormet.find(params[:id])
  #   @gourmet.destroy
  # end

end
