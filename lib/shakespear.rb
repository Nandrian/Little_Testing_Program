dictionnary1 = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

dictionnary2 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

# Lecture du fichier book.txt
book = File.read('../shakespear.txt')

# Lecture et Transformtion du fichier banned.txt en string
banned = File.read('../banned.txt').split("\n")

# Définition d'une fonction qui contient deux paramètres 
       # Word : le mot qu'on doit checker le nombre d'occurence dans l'un des deux dictionnaires
       # Ddictionnary : tableau où contient les mots q'on doit checker
def word_counter(word,dictionnary)
  hash = {}
  dictionnary.map{|i|
  
    if word.downcase.include?(i) == true 
    hash[i] = word.downcase.scan(i).count
    end 
  }
  	return hash  	
end