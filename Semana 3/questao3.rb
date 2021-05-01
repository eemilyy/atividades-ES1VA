arr = []
i = 0
tigres = 0
File.open("entradaQ3").each do |animal|           
    #animal.upcase == "PARAR\n" ? (arr << animal) : break

    # if(animal.upcase != "CONTINUAR\n")
        # arr << animal
    # end    

    arr << animal
    i += 1
    unless animal.chomp.upcase == "CONTINUAR"
         puts i
    end

    
        
end

p arr
