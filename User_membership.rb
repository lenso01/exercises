class CustomersClass                                                  #This Class to write and read information to memory
  attr_accessor :userID ,:user_name, :user_location, :user_job
end

def printing_to_screen                                                #This defination to print out entered all information about customer
  puts
  puts "User ID : #{@customers.userID}"
  puts  "User Name : #{@customers.user_name}"
  puts  "User Location : #{@customers.user_location}"
  puts "User Job : #{@customers.user_job}"
end


@customers = CustomersClass.new

def questionery                                                       #This is the questionery to get enteries to CustomerClass
print "Please enter user ID : "
@customers.userID = gets.chomp()                                      # @ symbol is to call variable in defination. otherwise you can't call it

print "Please enter user name : "
@customers.user_name = gets.chomp().capitalize

print "Please enter user location : "
@customers.user_location = gets.chomp().capitalize

print "Please enter user job : "
@customers.user_job = gets.chomp().capitalize
end

def input_show                                                      #This method to inqury if user wants to see the input or not
print "Would you like to see your input? "
answer = gets.chomp.downcase
if answer == 'y'
  printing_to_screen
else
  print "thank you for entering the information"
end
end


try_again_on = true                                                  #this area begining of the loop
while try_again_on
  puts `clear`                                                       #this clears the screen to get better looking. only works at mac
  questionery                                                        #this calls questionery methot above
  input_show                                                         #this calls input_show method
  puts                                                                      #this to give a one line space
  puts "Do you want to register another user? YES 'Y' or any key for NO "
  try_again_on = gets.chomp.downcase == 'y'                                 #if user enter y or Y . it will restart the loop

end

puts "Thanks for joining our program"                                 #end of the program.

