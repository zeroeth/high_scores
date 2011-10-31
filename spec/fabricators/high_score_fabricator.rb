Fabricator(:high_score) do
  name { 3.times.collect{ ("A".."Z").to_a.sample }.join }
  score { rand(10000) }
end
