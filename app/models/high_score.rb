class HighScore < ActiveRecord::Base
  belongs_to :high_score_list

  validates_presence_of :name
  validates_presence_of :score

  validates_numericality_of :score
end
