#!/usr/bin/env ruby
begin
require "sqlite3"
rescue LoadError
  p "sqlite3 gem must be installed"
  exit
end
class DBTools
	#######################################################################
	# create
	#  creates a new db, if a db with this name already exits it leaves it 
	#  unchanged. Default name "test.db" 
	#  return -1 if file already exits
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
			#there already exits a data base with that name
			-1
		end
	end
	#######################################################################
	# delete
	#  delete a db if it exits, db name must be provided
	#  return 1 if correct, -1 if file not found
	#######################################################################
	def delete(name)
		#check if really exits.
		if (File.file?"#{name}")
			File.delete(name)
		else
			#There is no database with that name
			-1
		end
	end
end