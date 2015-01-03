def get_pieces_folder_path
    __dir__ + "/../pieces/"
end

def get_bash_shebang_line
    "#!/usr/bin/env bash" + $/
end

def ask_for_file_path
    print "Where would you like to save selectable.sh? [#{__dir__}]: "
    path = STDIN.gets.chomp.strip
    if path.length == 0
        path = __dir__
    end
    puts "Saving in #{path}", $/
    path
end

def ask_about_options
    print "Would you like to have menu options predefined or not? [Yes/No]: "
    choice = STDIN.gets.chomp.strip.downcase[0]
    if choice == "y"
        options = []
        puts "Enter a menu option or just press Enter to quit."
        until (option = STDIN.gets.chomp.strip).length == 0 do
            options.push option
            puts "Added #{option} to the list."
        end
        puts ("The predefined options are [%s]." % [options.join(", ")]), $/
        return {:type => "predefined", :list => options}
    else
        print "Please enter the path where the options are stored: "
        path = STDIN.gets.chomp.strip
        puts "Loading from #{path}", $/
        return {:type => "stored", :path => path}
    end
end

def ask_about_choice_processing
    print "Would you like to display user's choice OR store it in a variable? [1st/2nd]: "
    choice = STDIN.gets.chomp.strip[0]
    if choice == "1"
        puts "You opted to display the user's choice.", $/
        return {:type => "show"}
    else
        print "Please enter the variable name: "
        name = STDIN.gets.chomp.strip.upcase
        puts "The user's choice will be stored in #{name}.", $/
        return {:type => "store", :variable_name => name}
    end
end

def build_selectable file_path, options, choice_processing
    # TODO
end
