# frozen_string_literal: false

require 'pry'

class User
  attr_writer :mastercard # à mettre en en-tête de ta classe
  attr_reader :birthdate
  attr_accessor :email, :encrypted_password

  @@user_count = 0 # on initialise la variable de classe qui sera un compteur du nombre d'instance

  # on définit un initialize
  def initialize(email_to_save)
    if check_email(email_to_save) # on vérifie l’e-mail proposé via une méthode check_email (cf plus bas)
      @email = email_to_save  # si l’e-mail passe le check => on le sauve dans l'instance
      @@user_count += 1       # un utilisateur vient d'être créé : on ajoute donc 1 au compteur
    else
      puts 'ERREUR ! EMAIL FOIREUX. Recommence' # si l’e-mail ne passe pas le check => message d'erreur
    end
  end

  def change_password(new_password)
    @encrypted_password = encrypt(new_password)
  end

  def self.count
    @@user_count
  end

  def greet
    puts 'Bonjour, monde !'
  end

  def say_hello_to_someone(first_name)
    puts "Bonjour, #{first_name} !"
  end

  def show_itself
    puts self
  end

  def update_email(email_to_update)
    @email = email_to_update
  end

  def read_email
    @email
  end

  def read_mastercard
    @mastercard
  end

  def update_birthdate(birthdate_to_update)
    @birthdate = birthdate_to_update
  end

  private # Toutes les méthodes en dessous de cette balise seront privées. A mettre en bas de ta classe donc !

  def check_email(email_to_save)
    # du code pour vérifier le format de l’e-mail (on ne rentre pas dans le détail)
    # si l’e-mail est ok, ça renvoie TRUE. Sinon FALSE
  end

  def encrypt(_string_to_encrypt)
    '##ENCRYPTED##'
  end
end
# fin de ma classe

# commandes à taper dans PRY :

#  julie = User.new
#
#  julie.say_hello_to_someone("Patrick") # va produire un "Bonjour, Patrick !"
#
#  julie.show_itself #=> va produire un résultat du genre "Voici l'instance : #<User:0x000055701febc118>"
#
#  julie.update_email("julie@julie.com") #on change la valeur du @email de julie
#  puts julie.read_email # tu devrais récupérer cette fois l'email: "julie@julie.com"
#
#  julie.mastercard = "4242 4242 4242 4242" # va sauvegarder cette valeur dans la variable de l'instance julie
#  julie.mastercard # retourne une erreur : on ne peut pas lire la variable facilement
#  julie.read_mastercard # on a créé une méthode spécifique pour la lire. Ici ça retourne bien : => "4242 4242 4242 4242"
#
#  julie.update_birthdate("06/01/1991") # permet de rattacher la date de naissance à l'instance => Date sauvegardée !
#  julie.birthdate # on arrive bien à lire la variable. Ça retourne : => "06/01/1991"
#  julie.birthdate = "06/01/1991" #là on a une erreur. Impossible de la modifier ainsi
#
#  julie.email = "julie@julie.com"
#  puts julie.email #=> "julie@julie.com"
#
#  julie = User.new("julie@julie.com") #dès le départ, tu rattaches un email à l'instance et affiche un message
# tu vas avoir un affichage dans le terminal : "On envoie un email de Bienvenue !!"
#  julie.email #on vérifie que l’e-mail est bien enregistré. ok, ça retourne => "julie@julie.com"
#
#  p User.count #=> 0
#  julie = User.new("julie@julie.com")
#  p User.count #=> 1
#  jean = User.new("jean@jean.com")
#  p User.count => 2

binding.pry
puts 'end of file'
