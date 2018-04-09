class Timer
  #write your code here
  attr_accessor(:seconds, :minutes, :heures)

  def initialize
  	@seconds=0
  	@minutes=0
  	@heures=0
  end

  def time_string
  	# Prise en compte du format spécifique des timers
    minutesAffichees, secondsAffichees = format_temps @seconds 
  	minutesAffichees += @minutes
  	
    heuresAffichees, minutesAffichees = format_temps minutesAffichees
  	heuresAffichees += @heures

  	return padded(heuresAffichees) + ":" + padded(minutesAffichees) + ":" + padded(secondsAffichees)
  end

  # Fonction devrait être private mais elle est public pour être testée 
  def padded (x)
    # On peut spécifier le format grâce aux "%format" %var 
    # %02d signifie que je veux deux chiffres pour indiquer la valeur de la variable
    return "%02d" %x
  end

  private 	#private puisque utilisé seulement par les fonctions de la classe
  
  def format_temps (nb)
  	supp = nb/60
  	nbU = nb%60
  	return supp, nbU # la fonction retourne deux valeurs 
  end
end