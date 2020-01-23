require_relative "Perceptron"

AND_GATE = [[1,1,1], [1,0,0], [0,1,0], [0,0,0]]
OR_GATE = [[1,1,1], [1,0,1], [0,1,1], [0,0,0]]
NOR_GATE = [[1,1,0], [0,1,0], [1,0,0], [0,0,1]]
NAND_GATE = [[0,0,1], [0,1,1], [1,0,1], [1,1,0]]

p "################### AND"
p_and = Perceptron.new(AND_GATE)
p_and.learn
p_and.view_net
p_and.info

p "################### OR"
p_or = Perceptron.new(OR_GATE)
p_or.learn
p_or.view_net
p_or.info

p "################### NOR"
p_nor = Perceptron.new(NOR_GATE)
p_nor.learn
p_nor.view_net
p_nor.info

p "################### NAND"
p_nand = Perceptron.new(NAND_GATE)
p_nand.learn
p_nand.view_net
p_nand.info