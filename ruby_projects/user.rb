class User
  def initialize(name)
    @name = name
  end
  
  def run
    puts "Hey I am runnig"
  end
  
  def get_name
    @name 
  end
  
  def set_name=(name)
    @name = name
  end
  
end

#Initialize names
user = User.new("Peter")
user1 = User.new("Jhon")
user2 = User.new("Kevin")

#Get Names
puts user.get_name
puts user1.get_name

#Set name
user.set_name = "Ben"

#NeNames
puts "Name again:"
puts user.get_name

#puts users run
user.run
user1.run
user2.run

#puts User.ancestors

puts user
puts user1
puts user2