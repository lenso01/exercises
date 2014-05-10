def verify_if_exist_function
  loop do

   verify = File.exist?(@filename)

    if verify == true
      break

    elsif verify == false
      puts "There is no such a file . Make sure you don't add '.txt' "
      file_name_entry
    end

  end
end


def verify_if_not_exist_function
  loop do

    verify = File.exist?(@filename)

    if verify == true
      puts "The file name you entered is already exist!!"
      puts "Press Any Key to enter new file name "
      gets
      file_name_entry
    elsif verify == false
      break
    end

  end
end



def file_list_function
  puts "Would you like to see all file with ending '.txt'. 'Y' or 'N' ? "
  see_files_verify = gets.chomp.downcase
  if see_files_verify == 'y'
    @file_list= Dir.glob("*.txt")
    puts  @file_list
  else


  end
end



def write_on_file_function
  open_file_for_data = File.open(@filename,'w+')
  print "Please enter your input in file : "
  input_data = STDIN.gets.chomp
  open_file_for_data.write(input_data)
  open_file_for_data.close

end

def  file_name_entry
print "Enter the file name : "

@filename = gets.chomp.to_s + '.txt'
end


def  file_create
create_main_file = File.new(@filename, 'w+')
create_main_file.close
puts "New file created under #{@filename}"
end

def multi_question_answering

  puts "*********** FILE MANAGER V1.2 ************"
  puts
  puts "What would you like to do ? "
  puts "1. Create New File Enter "
  puts "2. Open a Existing File "
  puts "3. Delete a Existing File "
  puts
  puts "*******************************************"
  print "> "
end

def return_back_or_read_answering

  puts "What would you like to do now ? "
  puts "To Read the file you entered  1 "
  puts "Go to Main Menu 2"
  puts "Return to previous menu 3"
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
  sub_menu_repeater = true
  multi_question_answering
  question_answering

  while sub_menu_repeater
    if @answer == '1'

      file_name_entry
      verify_if_not_exist_function
      file_create
      write_on_file_function
      puts "The date entered into file"
      return_back_or_read_answering
      question_answering
        if @answer == '1'
          open_a_file_function
          puts "Return to main menu press any key"
          gets
          sub_menu_repeater = false
        elsif @answer == '2'
          sub_menu_repeater = false

        end

    elsif @answer == '2'
      file_list_function
      file_name_entry
      verify_if_exist_function
      open_a_file_function
      return_back_or_read_answering
      question_answering
      if @answer == '1'
        open_a_file_function
        puts "Return to main menu press any key"
        gets
        sub_menu_repeater = false
      elsif @answer == '2'
        sub_menu_repeater = false

      end


    elsif @answer == '3'
      file_list_function
      file_name_entry
      verify_if_exist_function
      delete_a_file_with_function
      return_back_or_delete_answering
      question_answering
      if @answer == '1'
        file_list_function
        file_name_entry
        verify_if_exist_function
        delete_a_file_with_function
        puts "Return to main menu press any key"
        gets
        sub_menu_repeater = false
      elsif @answer == '2'
        sub_menu_repeater = false

      end

    end
  end
end
