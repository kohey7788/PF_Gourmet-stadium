class Public::FavoritesController < ApplicationController
  def create
    gourmet = Gourmet.find(params[:gourmet_id])
    favorite = current_visitor.favorites.new(gourmet_id: gourmet.id)
    favorite.save
    redirect_to gourmet_path(gourmet)
  end

  def destroy
  end
end
