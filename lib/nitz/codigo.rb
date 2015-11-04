class Biblio
    attr_reader :autor, :titulo, :serie, :editorial, :edicion, :fecha, :isbn
    def initialize (x, y, z, a, b, c, d)
        @autor = x
        @titulo = y
        @serie = z
        @editorial = a
        @edicion = b
        @fecha = c
        @isbn = d
    end
end