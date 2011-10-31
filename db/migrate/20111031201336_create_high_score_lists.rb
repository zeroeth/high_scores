class CreateHighScoreLists < ActiveRecord::Migration
  def self.up
    create_table :high_score_lists do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :high_score_lists
  end
end
