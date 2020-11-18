def day_trader(prix)
    benefice = Hash.new
    prix_index = []

    prix.each{|price|
        counter = 0
        while counter < prix.length 
                # Formule = prix de revente - prix d'achat
                result = prix[counter] - price
                if result >= 0 && prix.index(price) < counter
                # on incrémente le jour d'achat
                    prix_index << prix.index(price) 
                # on incrémente le jour de revente
                    prix_index << counter 
                # on incrémente jour de revente - jour d'achat => bénéfice de la vente 
                    benefice.merge!({prix_index => result }) 
                end  
                counter += 1
                prix_index=[] 
        end
    }   
    return benefice.key(benefice.values.max)
end