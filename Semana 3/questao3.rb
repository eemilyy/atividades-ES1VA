arr = []
macacos = 0
pesotigres = 0
cobras_venezuela = 0
qtd_tigres = 0

File.open("entradaQ3").each do |animal|           
    if animal.chomp.upcase != "CONTINUAR" and animal.chomp.upcase != "PARAR"
        arr << animal.chomp.upcase        
        
    else
        macacos += 1 if arr[0] == "MACACO"
        pesotigres += arr[1].to_f and qtd_tigres += 1 if arr[0] == "TIGRE"
        cobras_venezuela += 1 if (arr[0] == "COBRA") and (arr[2] == "VENEZUELA")        
        arr.clear        
    end

    break if animal.chomp.upcase == "PARAR"
end

puts macacos
qtd_tigres == 0 ? (puts '0.00') : (puts '%.2f' % (pesotigres/qtd_tigres)) 
puts cobras_venezuela

