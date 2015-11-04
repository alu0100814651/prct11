class Biblio
    attr_reader :autor, :titulo, :serie
    def initialize (x, y, z)
        @autor = x
        @titulo = y
        @serie = z
    end
end