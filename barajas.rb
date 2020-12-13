require_relative carta

class baraja
    attr_accessor :cartas

    def initialize()
        @cartas=[]
        for i in 1..13
            for j in ['C','D','E','T']
                @cartas.push Carta.new(i,j)
            end
         end 
    end

    def barajar()
        @cartas.shuffle   
    end

    def sacar()
        puts @cartas.pop
    end

    def repartir_mano()
        puts @cartas[-5,5]
    end

end