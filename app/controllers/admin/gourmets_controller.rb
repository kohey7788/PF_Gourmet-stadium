class Admin::GourmetsController < Admin::ApplicationController
  def index
    @gourmets = Gourmet.all
  end

  def show
    @gourmet = Gourmet.find(params[:id])
  end

  # def destroy
  #   @gourmet = Gormet.find(params[:id])
  #   @gourmet.destroy
  # end

end
