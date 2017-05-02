class BankAccount
	attr_reader :balance
	def initialize(starting_balance = 0, account_info)
		@balance = starting_balance
		@info = account_info
	end
	def deposit(amount)
		@balance += amount
	end
	def withdraw(amount)
		@balance -= amount
	end
end

# A class should do one thing
# Proctetion proxy means protects data on network

class BankAccountProxy
	def initialize(real_object)
		@object = real_object
	end
	def balance()
		@object.balance
	end
	def deposit(amount)
		checkForValidAccess()
		@object.deposit(amount)
	end
	def withdraw(amount)
		checkForValidAccess()
		@object.withdraw(amount)
	end
end