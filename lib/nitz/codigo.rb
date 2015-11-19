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

class Libro < Biblio
    attr_reader :isbnlibro
    
    def initialize (x, y, z, a, b, c, d)
        super(x, y, z, a, b, c, d)
        @isbnlibro=d
    end
    
end

class Revista < Biblio
    attr_reader :issn
    
    def initialize (x, y, z, a, b, c, d)
        super(x, y, z, a, b, c, d)
        @issn=d
    end
    
end

class Periodico < Biblio
    attr_reader :column
    
    def initialize (x, y, z, a, b, c, d)
        super(x, y, z, a, b, c, d)
        @column=d
    end
    
end

class Electronico < Biblio
    attr_reader :http
    
    def initialize (x, y, z, a, b, c, d)
        super(x, y, z, a, b, c, d)
        @http=d
    end
    
end