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
     def obtenerautores
     @autor
    end
    
    def obtenertitulo
     @titulo
    end
    
    def obtenerserie
     @serie
    end
    
    def obtenereditorial
     @editorial
    end
    
    def obteneredicion
     @edicion
    end
    
    def obtenerfecha
     @fecha
    end
    
    def obtenerisbn
     @isbn
    end
    
    def to_s
    "Autores: #@autores, Título: #@titulo, Serie: #@serie, Editorial: #@editorial, #@edicion Edición, Fecha de Publicación: #@fdp y ISBN: #@isbn"
    end
end