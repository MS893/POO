# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
require 'pry'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
require_relative 'lib/user'
require_relative 'lib/event'

# binding.pry
User.new("julie@julie.com", 35)
User.new("jean@jean.com", 23)
User.new("claude@claude.com", 75)
user_1 = User.find_by_email("claude@claude.com")
puts "Voici l'age du User trouvé : #{user_1.age}"
puts

my_event = Event.new(Time.now.strftime("%Y-%m-%d %H:%M"), 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

my_event.postpone_24h

my_event.to_s
puts my_event.is_past?
puts my_event.is_future?
puts my_event.is_soon?
