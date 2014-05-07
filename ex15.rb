print "file name>"
file_name = gets.chomp
open_file = File.open(file_name)

puts "you are about to open file name #{file_name}"


read_file_on = true

while read_file_on

  puts " would you like to read some content on this file ? "
  puts " To read the file 'R' to write on the file 'W' "
  answer = gets.chomp.downcase

  if answer == 'r'
    read_file = File.readlines(open_file)
    puts read_file
  elsif answer == 'w'

    write_on_file = File.open(file_name, 'a')
    puts "Please enter your first line"
    line1 =gets.chomp
    puts "Please enter your second line"
    line2 =gets.chomp
    write_on_file.write(line1)
    write_on_file.write("\n")
    write_on_file.write(line2)
    write_on_file.write("\n")
    write_on_file.close

  else
    puts "You didn't enter anything "

  end

puts "Would you like to try again : "
read_file_on = gets.chomp == 'y'

end





# file_name = ARGV.first
#
# read_file = File.read(file_name)
# puts read_file
#
#
#
# target = File.open(file_name, 'w')
#
# line1 = STDIN.gets.chomp()
#
# target.write(line1)
# target.close


# prompt = "> "
# txt = File.open(filename)
#
# @puts "Here's your file: #{filename}"
# puts txt.read()
#
# puts "I'll also ask you to type it again:"
# print prompt
# file_again = STDIN.gets.chomp()
#
# txt_again = File.open(file_again)
#
# puts txt_again.read()
#
#
#
#
#
#






















# filename = ARGV.first
# script = $0
#
# puts "We're going to erase #{filename}."
# puts "If you don't want that, hit CTRL-C (^C)."
# puts "If you do want that, hit RETURN."
#
# print "?"
# STDIN.gets
#
# puts "Opening the file..."
# target = File.open(filename, 'w')
#
# puts "Truncating the file.  Goodbye!"
# target.truncate(target.size)
#
# puts "Now I'm going to ask you for three lines."
#
# print "line 1: "; line1 = STDIN.gets.chomp()
#
# puts "I'm going to write these to the file."
#
# target.write(line1)
# target.write("\n")
#
# puts "And finally, we close it."
# target.close()
#
#
#
# #if
#  # answer = String(yes)
#   #delete_it = File.delete(filename)
#   #puts delete_it
#   #puts "YOUR FILE HAS BEEN DELETED"
# # end
