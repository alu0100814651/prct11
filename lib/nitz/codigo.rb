class Biblio
    attr_reader :autor, :titulo, :serie, :editorial, :edicion, :fecha
    def initialize (x, y, z, a, b, c)
        @autor = x
        @titulo = y
        @serie = z
        @editorial = a
        @edicion = b
        @fecha = c
    end
end