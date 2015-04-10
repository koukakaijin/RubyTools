class DataTools
	#######################################################################
	# sum
	#  adds all the arguments and returns the result.
	#######################################################################
	def sum(*args)
		args.inject(:+)
	end
end