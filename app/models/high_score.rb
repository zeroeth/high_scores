class HighScore < ActiveRecord::Base
  belongs_to :high_score_list

  validates_presence_of :name
  validates_presence_of :score

  validates_numericality_of :score

  scope :top_ten, limit(10).order('score DESC') 
end
