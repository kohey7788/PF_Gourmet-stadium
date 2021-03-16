class Public::GourmetsController < ApplicationController
  def new
    @gourmet = Gourmet.new
  end

  def create
    @gourmet = Gourmet.new(goutmet_params)
    @gourmet.save
  end

  def index
    @gourmets = Gourmet.all
  end

  def show
    @gourmet = Gourmet.find(params[:id])
  end

  def destroy
    @gourmet = Gourmet.find(params[:id])
    @gourmet.destroy
  end
end
