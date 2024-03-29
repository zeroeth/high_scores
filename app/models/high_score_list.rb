class HighScoreList < ActiveRecord::Base
  has_many :high_scores, :limit => 10, :order => 'score DESC, created_at'

  validates_presence_of :game_id

  def to_param
    self.game_id
  end

  def to_json(options = {})
    super({:include => :high_scores}.merge(options))
  end
end
