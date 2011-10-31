class HighScoreListsController < ApplicationController
  respond_to :json

  expose(:high_score_list) { HighScoreList.find_by_game_id(params[:id]) }

  def show
    respond_with high_score_list
  end
end
