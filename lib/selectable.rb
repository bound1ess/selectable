def get_pieces_folder_path
    __dir__ + "/../pieces/"
end

def get_bash_shebang_line
    "#!/usr/bin/env bash" + $/
end

def ask_for_file_path
    print "Where would you like to save selectable.sh? [#{__dir__}]: "
    input = STDIN.gets.chomp.strip
    if input.length == 0
        input = __dir__
    end
    puts "Saving in #{input}", $/
    input
end

def ask_about_options
    # TODO
end

def ask_about_choice_processing
    # TODO
end

def build_selectable file_path, options, choice_processing
    # TODO
end
