class TheCar
  attr_accessor :brand, :model, :year,:hours_power, :max_speed, :owner_name

end

def car_screen
  puts "Brand: #{@cars.brand.capitalize}"
  puts "Model: #{@cars.model}"
  puts "Year: #{@cars.year}"
  puts "HP: #{@cars.hours_power}"
  puts "Max Speed: #{@cars.max_speed}"
  puts "Owner : #{@cars.owner_name.upcase}"
end

@cars = TheCar.new

loop do
print "\n What is the brand? : "
@cars.brand = gets.chomp
print "What is the model? : "
@cars.model = gets.chomp.to_s
print "What year made? : "
@cars.year = gets.chomp.to_i
print "How many hours power? : "
@cars.hours_power = gets.chomp.to_i
print "What is the maximum speed? : "
@cars.max_speed = gets.chomp.to_i
print "Who is the current owner? : "
@cars.owner_name = gets.chomp.to_s

puts  "Would you like to see the information about the car"
puts "Use 'Y' for YES"

if gets.chomp.downcase == 'y'
  car_screen
else
  puts
  puts "Thank you for your entry"
  puts
end


end


