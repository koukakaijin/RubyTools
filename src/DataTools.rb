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
end