require 'time'
numeros = Hash.new
class Time
    def humanize
        numeros = { :one => 1, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6, :seven => 7, :eigth => 8, :nine => 9, :ten => 10, :eleven => 11, :twelve => 12}

        horas = self.strftime("%I")
        horas = horas.to_i

        numeros.each do |num, escrito|
            if escrito == horas
                horas = num
            end
        end

        meiaNoite = self.strftime("%H").to_i

        p meiaNoite

        minutos = self.strftime("%M").to_f

        diferenca = minutos/15
        p diferenca

        if diferenca <= 0.5
            "About #{horas.to_s}"
        elsif diferenca > 0.5 and diferenca <= 1.5
            "About quarter past #{horas.to_s}"
        elsif diferenca > 1.5 and diferenca <= 2.5
            "About half past #{horas.to_s}"
        elsif diferenca >= 2.5 and diferenca <= 3.5
            #puts horas
            print "About a quarter til one" if horas.to_s == "twelve"
            print "About a quarter til two" if horas.to_s == "one"
            print "About a quarter til three" if horas.to_s == "two"
            print "About a quarter til four" if horas.to_s == "three"
            print "About a quarter til five" if horas.to_s == "four"
            print "About a quarter til six" if horas.to_s == "five"
            print "About a quarter til seven" if horas.to_s == "six"
            print "About a quarter til eigth" if horas.to_s == "seven"
            print "About a quarter til nine" if horas.to_s == "eigth"
            print "About a quarter til ten" if horas.to_s == "nine"
            print "About a quarter til eleven" if horas.to_s == "ten"
            print "About a quarter til twelve" if horas.to_s == "eleven"
        else
           if meiaNoite.to_i == 23
                "About midnight"
           else
                print "About one" if horas.to_s == "twelve"
                print "About two" if horas.to_s == "one"
                print "About three" if horas.to_s == "two"
                print "About four" if horas.to_s == "three"
                print "About five" if horas.to_s == "four"
                print "About six" if horas.to_s == "five"
                print "About seven" if horas.to_s == "six"
                print "About eigth" if horas.to_s == "seven"
                print "About nine" if horas.to_s == "eigth"
                print "About ten" if horas.to_s == "nine"
                print "About eleven" if horas.to_s == "ten"
                print "About twelve" if horas.to_s == "eleven"
           end
        end
    end
end

File.open("entradaQ1").each do |linha|
    puts Time.parse(linha.chomp).humanize
end