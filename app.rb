# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
require 'pry'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
require_relative 'lib/user'
require_relative 'lib/event'

binding.pry

my_event = Event.new(Time.now.strftime("%Y-%m-%d %H:%M"), 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])

my_event.postpone_24h

my_event.to_s
puts my_event.is_past?
puts my_event.is_future?
puts my_event.is_soon?


