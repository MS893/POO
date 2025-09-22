class WorkEvent < Event
  attr_accessor :location

  def initialize(start_date, duration, title, attendees, location)
    super(start_date, duration, title, attendees)
    @location = location # j'ai rajouté cette ligne
  end

  def is_event_acceptable?
    if @attendees.length > 3 || @duration > 60
      puts "Cette réunion ne respecte pas nos bonnes pratiques !"
      return false
    else
      puts "Cette réunion est OK."
      return true
    end
  end

  def to_s 
    super.to_s
    puts ">Lieu : #{@location}"
  end

end
