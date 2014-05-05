try_again_on = true
while try_again_on
puts `clear`
puts "*********** HOW OLD ARE YOU? **********".center(100)
puts "When did you born?".center(100)
print "".center(47)
birth_day = gets.to_i

tdd = Time.new

puts "Your are #{tdd.year-birth_day} years old".center(100)

puts "**************************************".center(100)

gets

puts `clear`
print "Would you like inqury another person's age ? "
try_again_on = gets.chomp.downcase == 'y'
end