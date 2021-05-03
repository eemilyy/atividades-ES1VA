require 'time'

class Time
    def humanize
        horas = self.strftime("%H")
        horas = horas.to_i

        meiaNoite = self.strftime("%H")
        meiaNoite = meiaNoite.to_i

        minutos = self.strftime("%M")
        minutos = minutos.to_f

        ampm = self.strftime("%P")

        diferenca = minutos/15

        if diferenca <= 0.5
            if horas.to_s == "0"
                "About 00:00"
            else  
                "About " + horas.to_s + ":00 " + ampm
            end
        elsif diferenca > 0.5 and diferenca < 1.5
        "About " + horas.to_s + ":15 " + ampm
        elsif diferenca > 1.5 and diferenca < 2.5
        "About " + horas.to_s + ":30 " + ampm
        elsif diferenca > 2.5 and diferenca <= 3.5
        "About " + horas.to_s + ":45 " + ampm
        else
            if meiaNoite.to_i == 23
                "About midnight"
            else
                "About "+(horas+1).to_s + " " +  ampm
            end
        end
    end
end

File.open("entradaQ1").each do |linha|
    puts Time.parse(linha.chomp).humanize
end

