n = File.open("entradaQ2")
arr = Array.new

File.open("entradaQ2").each do |m|
    arr[m.split(" ")[0].to_i - 1] = m.split(" ")[1]
    #arr[m[0]] = m[1]
    #p arr
end
#n File.open("entradaQ2")
arr.each do |i|
    print i
end
#p File.readlines("entradaQ2").slice

