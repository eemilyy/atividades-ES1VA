arr = Array.new

File.open("entradaQ2").each do |m|
    arr[m.split[0].to_i - 1] = m.split[1] # -1 pois o numero das letras começam em 1
    
end

arr.each do |i|
    print i
end