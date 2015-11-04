class Biblio
    attr_reader :autor, :titulo, :serie, :editorial
    def initialize (x, y, z, a)
        @autor = x
        @titulo = y
        @serie = z
        @editorial = a
    end
end