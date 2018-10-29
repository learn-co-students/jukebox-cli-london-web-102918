songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:\n"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play\n"
  puts "- play : lets you choose a song to play\n"
  puts "- exit : exits this program\n"
end

def play(songs)
  puts "Please enter a song name or number:"
  request = gets.chomp

  if ("1".."9").include?(request)
    puts "Playing #{songs[request.to_i-1]}"
  elsif
    songs.include?(request)
    puts "Playing #{request}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |index, song|
    puts "#{index}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  if command == "help"
    help
  elsif command == "list"
    list(songs)
  elsif command == "play"
    play(songs)
  elsif command == "exit"
    exit_jukebox
  else
    help
  end
end
