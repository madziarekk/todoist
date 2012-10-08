require "rubygems"
require "sequel"

# connect to an in-memory database
#DB = Sequel.sqlite
DB = Sequel.connect('sqlite://todoist.db3')

# create an users table
DB.create_table :users do
  primary_key :id
  String :login
  String :email
  String :crypted_password
  String :salt
end

# create a dataset from the items table
users = DB[:users]

# populate the table
users.insert(:login => 'aaa@ab.pl', :login => aaa, :crypted_password => md5('aaa'))
users.insert(:login => 'bbb@ab.pl', :login => bbb, :crypted_password => md5('bbb'))
users.insert(:login => 'ccc@ab.pl', :login => ccc, :crypted_password => md5('ccc'))

# print out the number of records
puts "Users count: #{users.count}"
