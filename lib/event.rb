require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees
  attr_reader :end_date

  @@event_list = []

  def initialize(start_date_string, duration_in_minutes, title_to_save, attendees_to_save)
    # On convertit la date en objet Time pour pouvoir faire des calculs
    @start_date = Time.parse(start_date_string)

    @duration = duration_in_minutes # en minutes
    @end_date = @start_date + @duration * 60 # on ajoute des secondes

    @title = title_to_save
    @attendees = attendees_to_save
    @@event_list << self # On ajoute le nouvel événement à la liste des événements
  end

  def self.all
    @@event_list
  end
  
end