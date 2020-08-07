require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("Klingons", "Chicago", 2020, "Join us or die.")
c2 = Cult.new("Star_children", "Denver", 1990, "We love everyone.")
c3 = Cult.new("Kewl Cult", "Chicago", 1990, "We are so kewl.")


f1 = Follower.new("Mizzy", 21, "It is what it is.")
f2 = Follower.new("Jeffy", 35, "Life is a shit sandwich.")

b1 = BloodOath.new("2020-08-07", c1, f2)
b2 = BloodOath.new("2020-07-04", c2, f2)
b3 = BloodOath.new("2020-07-04", c2, f1)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits