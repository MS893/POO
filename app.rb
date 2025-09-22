# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
require 'pry'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/workevent'
# binding.pry
User.new("julie@julie.com", 35)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)
user_1 = User.find_by_email("claude@claude.com")
puts "Voici l'age du User trouvé : #{user_1.age}"
puts
meeting = WorkEvent.new("2019-01-17 09:00", 70, "réunion de travail", ["julie@julie.com", "jean@jean.com"], "Marseille") # je crée un WorkEvent
puts meeting.is_past? # on obtient bien true
puts meeting.to_s # on obtient l'affichage de l'objet avec les identifiants bruts des User
meeting.postpone_24h
puts meeting.start_date # on confirme qu'elle a été déplacée au 2019-01-18, 9h
meeting.is_event_acceptable?
puts

my_event = Event.new(Time.now.strftime("%Y-%m-%d %H:%M"), 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

my_event.postpone_24h

my_event.to_s
puts my_event.is_past?
puts my_event.is_future?
puts my_event.is_soon?
