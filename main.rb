require_relative "Perceptron"

AND_GATE = [[1,1,1], [1,0,0], [0,1,0], [0,0,0]]
OR_GATE = [[1,1,1], [1,0,1], [0,1,1], [0,0,0]]

p "AND"
p_and = Perceptron.new(AND_GATE)
p_and.learn
p_and.view_net
p_and.info

p "OR"
p_or = Perceptron.new(OR_GATE)
p_or.learn
p_or.view_net
p_or.info