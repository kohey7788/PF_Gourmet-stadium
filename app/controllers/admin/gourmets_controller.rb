class Admin::GourmetsController < ApplicationController
  def index
    @gourmets = Gourmet.all
  end

  def show
    @gourmet = Gourmet.find(params[:id])
  end
end
