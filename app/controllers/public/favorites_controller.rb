class Public::FavoritesController < ApplicationController
  def create
    @gourmet = Gourmet.find(params[:gourmet_id])
    favorite = current_visitor.favorites.new(gourmet_id: @gourmet.id)
    favorite.save
    @gourmet.favorites_count += 1
    @gourmet.save
    # redirect_to gourmet_path(gourmet)
  end

  def destroy
    @gourmet = Gourmet.find(params[:gourmet_id])
    favorite = current_visitor.favorites.find_by(gourmet_id: @gourmet.id)
    favorite.destroy
    @gourmet.favorites_count -= 1
    @gourmet.save
    # redirect_to gourmet_path(gourmet)
  end
end
