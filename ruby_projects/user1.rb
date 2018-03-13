module Destructable
  def destroy(anyobject)
    puts "I will destroy the objects"
  end
end

class User
  include Destructable
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end
  
  def run
    puts "Hey I am runnig"
  end
  
  def self.identify_method
    puts "I am a class method"
  end
  
end

class Buyer < User
  def run
    puts "I am a buyer"
  end
end

class Seller < User
  
end

class Admin < User
  
end

#Create Buyers
buyer1 = Buyer.new("Sam", "sumbuyer@example.com")
buyer1.run
seller1 = Seller.new("Justin", "justinbuyer@example.com")
seller1.run
admin1 = Admin.new("Edward", "edwardbuyer@example.com")
admin1.run

#Initialize names
user = User.new("Peter", "peter@example.com")
user1 = User.new("Jhon", "jhon@example.com")
user2 = User.new("Kevin", "peter@example.com")

puts "My user name is #{user.name} and my user email is #{user.email}."

#Class method - without creating any objects
User.identify_method
Buyer.identify_method

user.destroy("myname")

#puts Buyer.ancestors