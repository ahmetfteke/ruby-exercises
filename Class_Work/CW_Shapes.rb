class Shape
	def initialize
		raise NoMethodError
	end
end


class ComplexShape < Shape
	##
	def renderShapeToScreen
		@shapes.each{|sh|	sh.renderShapeToScreen}
	end
	##
end

def main
	complex = ComplexShape.new
	complex.renderShapeToScreen
end