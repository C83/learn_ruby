#write your code here
def echo(message)
	return message.downcase
end

def shout(message)
	return message.upcase
end

# Je cherche à éviter les erreurs en testant si nb>1
# Pour éviter d'être embêté avec l'espace entre deux mots, j'initialise ma 
# variable phrase avec le message. Ainsi, à chaque nouvelle itération (s'il y a 
# itération), un espace va être ajouté suivi du mot. 
# Attention : en utilisant la fonction concat, les valeurs qu'on rajoute sont aussi 
# 			impactées. Ici, j'utilise + afin de concaténer une copie du string. 
def repeat(message, nb = 2 )
	if (nb>1)
		phrase = message;
		(nb-1).times {phrase = phrase + " " + message.to_s}
	end
	return phrase
end

# Il y a deux façons d'écrire la fonction : 
# 	- message[0..(nb_caract-1)] signifie que l'on commence au début et que l'on 
# 		prend le nombre de caractère voulu (nb_caract-1) car on commence à 0
# 	- message [0, nb_caract] permet de commencer à l'index 0 et de prendre nb_caract caractères.
def start_of_word(message, nb_caract = 1)
	return message[0..(nb_caract-1)]
end

#split pour couper une phrase par mot 
def first_word (message)
	result = message.split' '
	return result[0]	
end

# On arrive aux limites du TDD : ici, on se contente de filtrer les petits mots spécifiés 
# dans les tests. Mais il faudrait trouver une solution pour enlever 'or', 
# 'in', 'of' etc... 
# Je divise toute la phrase pour avoir un tableau de mot et le résultat est passé dans un nouveau tableau
# Je fais capitalize sur le premier mot de la phrase indépendamment du contenu de celui-ci 
# puis je teste pour chaque mot si c'est un petit mot ou pas. 
# Remarque : 
# 	- pour ne pas être dépendant du type de caractère utilisé, je compare avec upcase. 
# 	- je retourne le tableau multiplié par " ". De cette façon, ce sera un string qui sera retourné, 
# 		avec les différents éléments délimités par un espace

def titleize (message)
	result = Array.new
	mots = message.split' '
	result[0] = mots[0].capitalize
	mots.slice!(0)

	mots.each { |mot|
		if (mot.upcase != 'AND') && (mot.upcase != 'OVER') && (mot.upcase != 'THE')
			result.push(mot.capitalize)
		else
			result.push(mot.downcase)
		end
	}
	return result*" "
end
