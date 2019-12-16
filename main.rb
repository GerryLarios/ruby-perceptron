require_relative "Perceptron"

AND_GATE = [[1,1,1], [1,0,0], [0,1,0], [0,0,0]]
OR_GATE = [[1,1,1], [1,0,1], [0,1,1], [0,0,0]]

p = Perceptron.new(AND_GATE)