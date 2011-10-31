require 'spec_helper'

describe HighScore do
  it { should belong_to(:high_score_list)      }
  it { should validate_presence_of(:name)      }
  it { should validate_presence_of(:score)     }
  it { should validate_numericality_of(:score) }
end
