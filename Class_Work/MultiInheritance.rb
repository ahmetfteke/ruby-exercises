module MyModule
	def func1()
	end
	def func2()
		###
	end
end
class Subject < Observable
	include MyModule # like inheritance
	include MyModule2 # like inheritance
	def initialize()
		super() # calls MyModule2 initializer
		##
	end
end
