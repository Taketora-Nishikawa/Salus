class FavoritesController < ApplicationController
  def create
    @board = Board.find(params[:board_id])
    @favorite = Favorite.create(user_id: current_user.id, board_id: params[:board_id])
    @favorite.save
  end

  def destroy
    @board = Board.find(params[:board_id])
    @favorite = Favorite.find_by(user_id: current_user.id, board_id: params[:board_id])
    @favorite.destroy
  end
end
