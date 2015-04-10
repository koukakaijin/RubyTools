#!/usr/bin/env ruby
begin
require "sqlite3"
rescue LoadError
  p "sqlite3 gem must be installed"
  exit
end
class DBTools
	#######################################################################
	# sum
	#  adds all the arguments and returns the result.
	#######################################################################
	def create(name="test.db")
		#ensure file ends in .db
		if name.split(//).last(3).join("").to_s != ".db"
			name=name+".db"
		end
		#check if it already exits, if it does not, create it.
		if (!File.file?"#{name}")
			db = SQLite3::Database.new name
			db.close
		else
			"there already exits a data base with the name #{name}"
		end
	end
end