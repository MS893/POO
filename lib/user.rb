
class User
  attr_accessor :email, :age
  @@user_list = []
  
  def initialize(email, age)
    if check_email(email) # on vérifie l’email proposé via une méthode check_email (cf plus bas)
      @email = email
      @age = age
      @@user_list << self
    else
      puts 'ERREUR ! EMAIL FOIREUX. Recommence'
    end
  end

  # retourne la liste des utilisateurs (self. car method de classe)
  def self.all
    @@user_list
  end

  def self.find_by_email(email)
    @@user_list.find { |user| user.email == email }
  end

  private # Toutes les méthodes en dessous de cette balise seront privées.
  def check_email(email)
    # Cette regex vérifie la présence de caractères avant et après le '@', ainsi qu'un point dans le domaine.
    email.match?(/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
  end
end
