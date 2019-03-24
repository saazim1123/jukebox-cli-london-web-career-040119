require 'pry'

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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  my_songs.each_with_index do |song, index|
    
    puts "#{index += 1}: #{song}"

  end
end

def play(my_songs)
  output = ""
  puts "Please enter a song name or number:"
  user = gets.chomp
  
  my_songs.each_with_index do |song, index|
    if user == (index + 1).to_s || user == song
      output = "Playing #{song}"
    end
  end
  
  if output.include?("Playing")
    puts output
    
  elsif user == "list"
    list(my_songs)
    play(my_songs)
    
  else
    puts "Invalid input, please try again"
  
  end
end


def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end


def run(my_songs)
  #this method is the same as in jukebox.rb
  help 
  
  user = " "
  
  until user == "exit"
    puts "Please enter a command:"
    user = gets.chomp.downcase
    if user == "help"
      help
      
    elsif user == "list"
      list(my_songs)
      
    elsif user == "play"
      play(my_songs)
      
    else
      puts "Invalid response. Please try again"
    end
  end
  exit_jukebox
end