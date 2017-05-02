class Log
	attr_accessor :file
	private_class_method :new
	def initialize
		@file = open("log.txt")
	end
	# @@instance #class static variable, single variable all share
	# self. # refers to class
	def self.instance() # static method
		if @@instance == nil
			@@instance = Log.new
		end
		return @@instance
	end
end   

log = Log.instance

$global_variable

require singleton
class Block
	include singleton


end

b = Block.new # singleton

