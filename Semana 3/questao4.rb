pacientes = Hash.new
tDNAquant = 0
maiorTpaciente = 0

File.open("entradaQ4").each do |linha|
    break if linha.split[0] == "9999"

    codigoPaciente = linha.split[0]
    dnaPaciente = linha.split[1]
    pacientes[codigoPaciente] = dnaPaciente
end

pacientes.each do |codigo, dna|
    @contador = 0

    dna.split('').each do |c| 
        @contador += 1 if c == "T"
    end
    
    if @contador > tDNAquant
         tDNAquant = @contador
         maiorTpaciente = codigo
    end 
end

puts maiorTpaciente