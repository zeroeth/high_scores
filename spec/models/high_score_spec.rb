require 'spec_helper'

describe HighScore do
  it { should belong_to(:high_score_list) }
end
