# composite
# Base class
# need for : hiearchy of tests
# limitation : tasks needs to be in same interface
# limitation : overly generalize

class Component # abstract
	def dobehavior
		raise NoMethodError
	end
end

class Leaf < Component
	def dobehavior
		@val
	end
end
class Composite < Component
	def dobehavior
		children.each{|c|
			c.dobehavior
		}
	end
	def addChild
		#
	end
	def deleteChild
		#
	end
end

# iterator
# external: outside the class, has_next , next_item
# external limitation: it's for only one class
# driver controls the iteration
# internal: inside the class, each
# internal limitation: you have no control over

# command
# run bunch of commands in queue
# gui is good example
# mix and match objects & behaviors
module CommandModule
	def execute
		raise NoMethodError
	end
end

class Command
	include CommandModule
	def execute
		#
	end
end
class CommandQueue
	def addCommands(c)
		@commands << c 
	end
	def executeCommands
		@commands.each{|c|
			c.execute
		}
	end
end

# adapter
# adapts a class to another
# general solution
class obj1
	def method1
	end
	def method2
	end
end
class obj1adapter
	def initialize
		@obj1 = obj1.new
	end
	def mymethod1
	end
	def mymethod2
	end
class obj2
	def initialize
		@obj1 = obj1adapter.new
	def usemymethod1
		@obj1.mymethod1
	end
	def usemymethod2
		@obj1.mymethod2
	end
end

# in ruby we can edit class in runtime

class runtime
end
class obj1
	def mymethod1
		self.method1
	end
	def mymethod2
		self.method2
	end
end
# modifies single instances of a class
obj = obj1.new
class << obj

# proxy pattern
# gateway class
# limitation: data loss

class A
	def foo
	end
	def bar
	end
end

class AProxy
	def foo
	end
	def bar
	end
end

class B
end

# protection
# security check
# authentication, checks access

# remote
# manage network connections
# api

# virtual
# controls resources
# saves expensive calculations if not necessary

def method_missing(symbol, args)
	@obj.send(symbol, args)
end

3. (5 points) You are on a software team that is building 
a web service that has several different Movie Information 
APIs (Cast, Financials, Plot) that all interact with one another. 
Three other members of the team are busy building the classes 
for each API in various languages, but you have been asked to 
define the interface that will allow the clients to use
any of the APIs in ruby to produce an information page 
for a movie.  Give your design by defining the class(es) and 
methods you would use to dynamically build the information 
page based on only the options they want.

class Proxy
	def initialize(obj)
		@obj = obj
	end
	def call()
		specialOperation()
		@obj.getInformation()
	end
	def specialOperation
		# Proxy subclasses implements if needed
	end
end

class Cast # (Cast, Financials, Plot each same)
	def getInformation()
		# implementation
	end
end

cast_information = Proxy.new(Cast.new)
 