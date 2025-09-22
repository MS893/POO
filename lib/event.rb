require 'time'

class Event
  attr_accessor :start_date, :duration, :title, :attendees
  attr_reader :end_date

  @@event_list = []

  def initialize(start_date_string, duration_in_minutes, title_to_save, attendees_to_save)
    # On convertit la date en objet Time pour pouvoir faire des calculs
    @start_date = Time.parse(start_date_string)
    @duration = duration_in_minutes # en minutes
    @end_date = @start_date + @duration * 60
    @title = title_to_save
    @attendees = attendees_to_save
  end

  def self.all
    @@event_list
  end

  def postpone_24h
    @start_date = @start_date + 24 * 3600 # toujours en secondes (on peut utiliser 1440.minutes ou xx.seconds)
  end

  def end_date
    @end_date = @start_date + @duration * 60 # on ajoute des secondes
  end

  def is_past?
    Time.now > @end_date ? return "L'évènement est passé" : return "L'événement n'est pas passé"
  end

  def is_future?
    Time.now < @end_date ? return "L'évènement est dans le futur" : return "L'événement est passé"
  end

  def is_soon?
    Time.now <= @start_date + 600 ? return "L'évènement est dans les 10 minutes" : return "L'événement n'est pas dans les 10 minutes"
  end

  def to_s 
    puts ">Titre : #{@title}"
    puts ">Date de début: #{@start_date.strftime("%Y-%m-%d %H:%M")}"
    puts ">Durée : #{@duration} minutes"
    puts ">Invités : #{@attendees.join(', ')}"
  end

end