class AddHighScoreListToHighScore < ActiveRecord::Migration
  def self.up
    add_column :high_scores, :high_score_list_id, :integer
  end

  def self.down
    remove_column :high_scores, :high_score_list_id
  end
end
