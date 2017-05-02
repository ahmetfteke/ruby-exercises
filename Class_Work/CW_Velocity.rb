class Velocity
	def getDistance(object)
		#gps calculate distance
	end
end

class Encrypter
	def initialize(key)
		@key = key
	end
	def encrypt(read, write)
		key_index = 0
		while not read.eof?
			char = read.getc
			encrypted_char = char ^ @key[key_index]
			key_index += 1 % key_index.size
			write.putc(encrypted_char)
		end
	end
end

class StringIO
	def initialize(str)
		@string = str
		@position = 0
	end
	def getc
		char = @string[position]
		@position += 1
		char
	end
	def putc(char)
		@string[position] = char
		@position += 1
		char
	end
	def eof?
		return @position >= @string.length
	end
end

	
myencrypter = Encrypter.new("Hello world")
buffer = StringIO.new
myencrypter.encrypt(StringIO.new("This is a secret"), buffer)

# Adapter Pattern
# adapter class is invisible middle man to solve communication problem between classes
# more general use
# closed for modification design princible 

vel = Velocity.new
class << vel
	def method_name
		# add this method to vel object
		# add at run time

	end
end