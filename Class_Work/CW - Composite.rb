class Node 
	def initialize
		raise NoMethodError
	end
	def numberOfSubElements
		raise NoMethodError
	end
	def elementType
		@type
	end
	def elementLevel
		@level
	end
end

class Leaf < Node
	def initialize
		#implement
	end
	def numberOfSubElements
		1
	end 
end
class Composite < Node
	def initialize
		@children = Array.new
	end
	def numberOfSubElements
		count = 0
		@children.each{ |child|
			count += child.numberOfSubElements
		}
		count
	end 
end

def main
	composite = Composite.new
	
	puts composite.numberOfSubElements
end

main