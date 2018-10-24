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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |indexed_songs|
    puts songs
  end
end

def play(songs)

  puts "Please enter a song name or number:"
  users_song = gets.chomp

  if (1..9).to_a.include?(users_song.to_i)
    puts "Playing #{songs[users_song.to_i - 1]}"
  elsif songs.include?(users_song)
    puts "Playing #{users_song}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  users_input = gets.chomp.downcase

  if users_input == "help"
    help
  elsif users_input == "list"
    list(songs)
  elsif users_input == "play"
    play(songs)
  elsif users_input == "exit"
    exit_jukebox
  else help
  end
end
