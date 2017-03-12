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
#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)
def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  songs.each_with_index { |songs,index| puts "#{index + 1}. #{songs}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  response_num = response.to_i
  if response_num.between? 1, songs.length
    puts "Playing #{songs[response_num - 1]}"
  elsif songs.include? response
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  while response != "exit"
    if response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == "help"
      help
    end
    response = gets.chomp
  end
  exit_jukebox
end
