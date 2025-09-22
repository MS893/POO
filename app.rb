# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
require_relative 'lib/user'
require_relative 'lib/event'


Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
puts Event.all

=begin
julie = User.new("julie@email.com", 32)
puts julie.email
puts julie.age
puts User.all
=end