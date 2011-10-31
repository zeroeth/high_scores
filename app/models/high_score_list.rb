class HighScoreList < ActiveRecord::Base
  has_many :high_scores

  validates_presence_of :game_id

  def to_param
    self.game_id
  end
end
