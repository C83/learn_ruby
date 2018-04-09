#write your code here
def ftoc (t_fahr)
	# Calcul : TempC = ( (TempF-32) / 1.8)
	# round permet d'arrondir à l'unité supérieur quand les flottants sont >= 50. 
	# 		Sans cette fonction, la valeur est tronquée lors du to_i
	# to_i car c'est un nombre entier qui est attendu. Le flottant va être converti
	# Ne pas oublier les parenthèses pour gérer les priorités de calcul
	return ( (t_fahr-32) / 1.8).round.to_i 	
end

def ctof (t_cel)
	# Calcul : TempF = 1.8 TempC +32
	# Cette fois-ci, on veut le résultat en flottant. Donc pas de fonction .rouund et .to_i
	return 1.8 * t_cel + 32
end