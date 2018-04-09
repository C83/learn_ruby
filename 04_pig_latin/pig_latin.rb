#write your code here
# =~ permet d'utiliser les expressions régulières, bien pratique pour spécifier le début d'un mot
#
# Il est aussi possible d'utiliser la fonction : 
# 	start_with?([prefixes]+) → true or false
# 	Returns true if str starts with one of the prefixes given.
# 		"hello".start_with?("hell")               #=> true
# 		# returns true if one of the prefixes matches.
# 		"hello".start_with?("heaven", "hell")     #=> true
# 		"hello".start_with?("heaven", "paradise") #=> false

def translate (message)
	result = Array.new
	mots = message.split' '

	mots.each { |mot|
		#Test pour savoir si le mot commence par une majuscule : 
		
		
		if (/^[A-Za-z]/ =~ mot)

			if (/^[A-Z]/ =~ mot)
				is_capitalized = true;
			end
			
			mot.downcase!
			
			if ( /^[^aeiouy]/ =~ mot) 
			# Premier ^ pour indiquer que c'est le début du mot, second pour sélectionner l'inverse
				if ( (/^[^aeiouy]{3}/ =~ mot)||(/^[^aeiouy]{2}u/ =~ mot)) 
					# J'ai trois consonnes d'affilée ou deux consonnes d'affilée + u
					mot = mot + mot.slice!(0..2)
				elsif ( (/^[a-z][^aeiouy]/ =~ mot) || (/^qu/ =~ mot)) 
					# J'ai deux consonnes d'affilée ou "qu"
					mot = mot + mot.slice!(0..1)

				else
					# J'ai qu'une consonne 
					mot = mot + mot.slice!(0)	
					
				end
			end
			# Je rajoute ay à la fin quelque soit le mot
			mot = mot + 'ay'
			
			if is_capitalized
				is_capitalized=false
				mot.capitalize!
			end
		end

		result.push(mot)
	}
	# Permet d'afficher un string des éléments du tableau, espacés avec " "
	return result * " "
end