arr = []
contador = 0
tigres = 0
macacos = 0
pesotigres = 0
cobras_venezuela = 0
qtd = 0
File.open("entradaQ3").each do |animal|           
    #animal.upcase == "PARAR\n" ? (arr << animal) : break

    # if(animal.upcase != "CONTINUAR\n")
        # arr << animal
    # end   

     if animal.chomp.upcase != "CONTINUAR" and animal.chomp.upcase != "PARAR" #a menos que
          arr << animal.chomp.upcase
        # p "entrou"
     

    else
        #p "2"
    
    # unless animal.chomp.upcase == "CONTINUAR" #a menos que
        # arr << animal.chomp.upcase
        # next
    # end

    p arr[0]

    macacos += 1 if arr[0] == "MACACO"
    pesotigres += arr[1].to_f and qtd += 1 if arr[0] == "TIGRE"
    cobras_venezuela += 1 if (arr[0] == "COBRA") and (arr[2] == "VENEZUELA")
    
    arr.clear

    end
end

p qtd
#print arr

p macacos
p pesotigres/qtd if pesotigres != 0
p cobras_venezuela

