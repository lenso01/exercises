def write_on_file_function
  open_file_for_data = File.open(@filename,'w+')
  print "enter your input : "
  input_data = STDIN.gets.chomp
  open_file_for_data.write(input_data)
  open_file_for_data.close

end

def  file_name_entry
print "print enter file name : "

@filename = gets.chomp.to_s + '.txt'
end


def  file_create
create_main_file = File.new(@filename, 'w+')
create_main_file.close
puts "New file created under #{@filename}"
end

def multi_question_answering

  puts "What would you like to do ? "
  puts "To Create New File Enter '1' "
  puts "To Open a Existing File '2'"
  puts "To Delete a Existing File '3'"
  print "> "
end

def return_back_or_read_answering

  puts "What would you like to do now ? "
  puts "To Read the file you entered  '1' "
  puts "Go to Main Menu '2'"
  print "> "
end

def return_back_or_delete_answering

  puts "What would you like to do now ? "
  puts "To Delete another file  '1' "
  puts "Go to Main Menu '2'"
  print "> "
end


def question_answering
  @answer = gets.chomp.downcase()
end

def file_name_entry_function
  puts "Please enter file name>  "
  print "> "
  @filename = (gets.chomp(+'.txt'))
end

def open_a_file_function
  openfile = File.open(@filename)
  puts File.read(openfile)
  openfile.close
end

def delete_a_file_with_function
  puts "The #{@filename} file will be deleted now"
  puts "Are you sure? 'Y' for Yes 'N' for No"
  print "> "
  question_answering
  if @answer == 'y'
    File.delete(@filename)
    puts "The file deleted successfully"
  else
    puts "File delete task aborted"
  end

end


menu_repeater = true

while menu_repeater
  puts `clear`
  multi_question_answering
  question_answering

    if @answer == '1'

      file_name_entry
      file_create
      write_on_file_function
      puts "The date entered into file"
      return_back_or_read_answering
      question_answering

        if @answer == '1'
          open_a_file_function
          puts
          return_back_or_read_answering
          question_answering

        elsif @answer == '2'
          menu_repeater
        end

    elsif @answer == '2'
      file_name_entry
      open_a_file_function
      return_back_or_read_answering
      question_answering
        if @answer == '1'
          open_a_file_function
          return_back_or_read_answering
          question_answering
            if @answer == '1'
              open_a_file_function
              return_back_or_read_answering
              question_answering
            elsif @answer == '1'
              menu_repeater
            end

        elsif @answer == '2'
          menu_repeater
        end


    elsif @answer == '3'

      file_name_entry
      delete_a_file_with_function
      return_back_or_delete_answering
      question_answering

        if @answer == '1'


        elsif
          menu_repeater
        end

  end
end
