#write your code here
# Fonction add
# @params : 2 nombres
# return : resultat de l'addition
def add (a, b)
	return a+b
end

# Fonction substract
# @params : 2 nombres
# return : resultat de la soustraction
def subtract (a, b)
	return a-b
end

# Fonction somme
# @params :un tableau d'integer
# return : somme des integers
def sum ( array )
	sum = 0
	array.each { |x| sum += x}
	sum
end

# Fonction multiplication
# @params : 2 integers
# return : résultat de la multiplication
def multiply (*nb)
	result = 1
	nb.each { |x| result = result * x }
	return result.to_i
end

# Fonction puissance
# @params : 2 integers
# return : premier integer à la puissance du second
def power (a,b)
	return a**b
end

# Fonction puissance
# @params : 2 integers
# return : premier integer à la puissance du second
# Remarque : 
# 		- dans le test, il est possible d'utiliser'_' pour
# 			démarquer les milliers
# 		- j'utilise x+1 car lorsqu'on  utilise n.times le bloc
# 			est fait n fois mais la valeur x commence à 0
def factorial (nb)
	result=1
	nb.to_i.times {|x| result=result* (x+1) }
	return result
end
