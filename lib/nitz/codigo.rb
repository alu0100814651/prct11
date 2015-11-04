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
    
    def obtenautor
     @autor
    end
    
    def obtentitulo
     @titulo
    end
    
    def obtenserie
     @serie
    end
    
    def obteneditorial
     @editorial
    end
    
    def obtenedicion
     @edicion
    end
    
    def obtenfecha
     @fecha
    end
    
    def obtenisbn
     @isbn
    end
    
    def to_s
    "Autor: #@autor, Titulo: #@titulo, Serie: #@serie, Editorial: #@editorial, #@edicion Edicion, Fecha de Publicacion: #@fecha y ISBN: #@isbn"
    end
end