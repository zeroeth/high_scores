class AddGameIdToHighScoresList < ActiveRecord::Migration
  def self.up
    add_column :high_score_lists, :game_id, :string
  end

  def self.down
    remove_column :high_score_lists, :game_id
  end
end
