class DataTools
	#######################################################################
	# sum
	#  adds all the arguments and returns the result.
	#######################################################################
	def sum(*args)
		args.inject(:+)
	end
	#######################################################################
	# mul
	#  multiplies all the arguments and returns the result.
	#######################################################################
	def mul(*args)
		args.inject(:*)
	end
	#######################################################################
	# mul
	#  return a random string of the requested length.
	#######################################################################
	def random_string(i=50)
		return "argument must be an integer" unless i.is_a? Integer
		(0...i).map { ('a'..'z').to_a[rand(26)] }.join
	end
end