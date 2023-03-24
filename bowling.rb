#Need to be able to calculate the score
#X is a strike
# / is a spare
# F is a foul
# - is missed pins
# max score is 300
#There are 10 frames

sum = 0
class Bowling
attr_reader :scores


def total_score
  @scores.each do |score|
    sum += score
  end
end
end

p1_scores = []
p2_scores = []

10.times do
  p1_scores << rand(1..10)
  p2_scores << rand(1..10)
end

p p1_scores.sum
p p2_scores.sum

if p1_scores.sum == p2_scores.sum
  p "It's a tie!"
elsif
  p1_scores.sum > p2_scores.sum
  p "Player 1 wins!"
else
  p "Player 2 wins!"
end



