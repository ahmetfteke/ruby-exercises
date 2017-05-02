require 'json'

class APIProxy
	def createObject
		raise NoMethodError
	end
	def makeRequest
		result = open(@url)
		@object = JSON.parse(result)
		#result = open("http://stevenamoore.me/projects/holdemapi?cards=KsQs&board=As..")
		
	end
end

class HoldemAPIProxy < APIProxy
	def initialize(url)
		@url = url
	end
	def createObject
		@ph = PokerHand.new
		@ph.odds = @object['odds']
	end
end

#Protection proxy
#Remote Proxy
#Virtual Proxy - Server side: expensive object, bankaccount_proxy let you reach expensive object on your program.
# => Delays if object is not needed	
# => 

class BankAccount
	def balance
		return 500000000
	end
	def balance1 
		return 5000000
	end
end

class BankAccountProxy
	def initialize
		@obj = BankAccount.new
	end
	def balance
		security_change
		@obj.balance
	end
	def method_missing(symbol)
		puts symbol
		@objc.send(symbol, args)
	end
end

def main
	bap = BankAccountProxy.new
	puts bap.balance1
end
main