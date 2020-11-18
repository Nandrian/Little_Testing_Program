# Create a hash
def hash_add(hash, key)
    if (hash.key?(key))
      hash[key] += 1
    else
      hash[key] = 1
    end
end
  
# Define a function 'word_counter' which store the 2 parameters and 2 data types :
        # Corps, is a string which you check the number of different occurence
        # Dictionnary, is an array which calculate the number of word in the Corps
def word_counter(str, dictionnary)
    corps = str.split(" ")
    res = {}
    for word in corps do
      	for known_word in dictionnary do
        	if (word.downcase.include?(known_word.downcase))
          	hash_add(res, known_word)
            end
      	end
    end
    return (res)
end
  
# Define an methode 'count' will show the nimber of occurence in each string in dictionnary
def count(corps)
    dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy",
    "it", "i", "low", "own", "part", "partner", "sit"]
    print word_counter(corps, dictionnary)
    puts
end