#they share all functionality
#heirarchy of classes
#produces a result
#test based design
#it's not a data structure

class Task
	def task
		raise NoMethodError
	end
end

class Composition < Task
	def initialize
		@children = []
	end
	def task
		accum = 0
		@children.each{ |c| accum+= c.task}
		accum
	end
	def << (child) #creates meaning for symbol to override parameter
		@children << child
	end
	def [](i)
		@children[i]
	end
	def [](i, value)
		@children[i] = value
	end
end

class Leaf < Task
	def initialize
		#impl
	end
	def task
		#do something
	end
end
def main
	leaf = Leaf.new
	cmp  = Composition.new
	cmp << leaf
	puts(cmp[0])

	newleaf = Leaf.new
	cmp[0] = newleaf
end

main
