require_relative'carta'

class Baraja
    attr_accessor :cartas

    def initialize
        pinta = ['C','D','E','T']
        @carta =[]
        pinta.each do |p|
            13.times do |i|
                @cartas.push(Carta.new(i+1, p))
            end
        end
    end

    def barajar        
        @carta = @carta.shuffle
    end

    def sacar
        @carta.pop
    end

    def repartir_mano
        mano =[]
        5.times { |i| mano.push(@carta.reverse[i])}
        5.times { @carta.pop}
        mano
    end
end 