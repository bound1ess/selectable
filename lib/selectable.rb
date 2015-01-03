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
        return {:type => "predefined", :list => options}
    else
        print "Please enter the path where the options are stored: "
        path = STDIN.gets.chomp.strip
        print $/
        return {:type => "stored", :path => path}
    end
end

def ask_about_choice_processing
    # TODO
end

def build_selectable file_path, options, choice_processing
    # TODO
end
