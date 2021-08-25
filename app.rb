require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/scraper'
require 'views/menu'
require 'views/done'


system ('clear')
puts "Salut à toi, jeune entrepreneur !".green

while true
  menu = Menu.new
  menu.show_menu
  choice = gets.chomp.to_i
  menu.menu_choice(choice)
  puts
  Done.new.show
  
  puts
  puts
  puts "Continuer ?"
  puts "Y/N"
  continue = gets.chomp.to_s
  continue = continue.upcase
  if continue === "Y" 
  elsif continue === "N"
    system ('clear')
    exit
  end

  system ('clear')
end

system ('clear')


# binding.pry
# puts "end of file "