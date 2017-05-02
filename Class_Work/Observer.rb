class Subject
	def initialize(observers)
		@obs = observers
	end
	def notify()
		obs.each{ |o|
			o.update(self)
		}
	end
	def addObserver(ob)
		@obs << ob
	end
	def removeObserver(ob)
		@obs.delete(ob)
	end
end 

class Observer
	def initialize(subject)
		@pull = subject
	end
	def pull()
		while(true)
			self.update(@pull.info_needed)
			sleep(15*60*60) # waits 15 mins
		end
	end
	def update()
		# gets information it needs
	end
end
