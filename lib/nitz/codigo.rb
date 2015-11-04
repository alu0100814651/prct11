class Biblio
    attr_reader :autor, :titulo, :serie, :editorial, :edicion
    def initialize (x, y, z, a, b)
        @autor = x
        @titulo = y
        @serie = z
        @editorial = a
        @edicion = b
    end
end