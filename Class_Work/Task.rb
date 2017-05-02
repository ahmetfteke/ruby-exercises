
#hiyerarsi tree yapisi
#all elements has a task

class Task
	def timer
		raise NoMethodError
	end
end
class GatherMilk < Task
	def timer
		2
	end
end
class Gather < Task
	def timer
		total = 0
		@children.each_char { |c| total += c.timer }
		total
	end
	def addChildren(child)
		@children << child
	end
end

def main
	task = Gather.new
	task.addChildren(GatherMilk.new)

	cookie_time = Bake.new.timer()
end