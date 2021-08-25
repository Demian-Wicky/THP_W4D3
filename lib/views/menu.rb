# a pour but de demander ce que l'utilisateur veut faire.

class Menu
  def show_menu
    puts
    puts "On va scraper les mails du Val d'Oise.".green
    puts "Tu veux récupérer les données sous quelle forme ?".green
    puts
    puts "0 - ".yellow + "Montre moi juste le résultat dans le " + "terminal".yellow
    puts "1 - ".yellow + "Générer un fichier " + "CSV".yellow
    puts "2 - ".yellow + "Générer un fichier " + "JSON".yellow
    puts "3 - ".yellow + "Générer un fichier " + "Google Spreadsheet".yellow + " (pas encore implémenté)".blue
    puts
    puts "4 - ".yellow + "Effacer toutes les données sauvegardées".red
    puts "5 - ".yellow + "Quitter".blue
    puts
    print "> "
  end

  def menu_choice(choice)
    if choice == 0
      scraper_terminal = Scraper.new.perform
      print scraper_terminal
    elsif choice == 1
      scraper_csv = Scraper.new.write_csv
    elsif choice == 2
      scraper_csv = Scraper.new.write_json
    elsif choice == 3
      ##
    elsif choice == 4
      File.open('db/scraper_data.csv', 'w') {|file| file.truncate(0) }
      File.open('db/scraper_data.json', 'w') {|file| file.truncate(0) }
    elsif choice == 5
      system ('clear')
      exit
    end
  end

end