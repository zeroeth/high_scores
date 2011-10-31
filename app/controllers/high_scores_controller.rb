class HighScoresController < ApplicationController
  respond_to :json

  expose(:high_score_list) { HighScoreList.find_by_game_id(params[:high_score_list_id]) || HighScoreList.new(:game_id => params[:high_score_list_id]).tap(&:save) }

  def create
    high_score = high_score_list.high_scores.build(params[:high_score])
    high_score.tap(&:save)

    render :nothing => true
  end
end
