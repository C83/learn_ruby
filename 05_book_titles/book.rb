class Book
# write your code here
# Le setter est réécrit pour pouvoir ajouter la logique métier. 
# Réutilisation de titleize de l'exo3. Pour simplifier, except_word répertorie tous les mots qu'il 
# ne faut pas mettre en majuscule. Grâce à la fonction include?, la première lettre ne sera pas en 
# majuscule si c'est un mot parmi la liste. Il est ainsi facile de rajouter des mots dans ce dico

	attr_accessor :title

	def title=(name)

		except_word = ['AND', 'OVER', 'THE', 'IN', 'OF', 'A', 'AN']
		result = Array.new
		mots = name.split' '
		result[0] = mots[0].capitalize
		mots.slice!(0)

		mots.each { |mot|

			if except_word.include?(mot.upcase)
				result.push(mot.downcase)
			else
				result.push(mot.capitalize)
			end
		}
		
		@title = result*" "
	end

end
