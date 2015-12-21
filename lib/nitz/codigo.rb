class Biblio
    include Comparable
    attr_reader :autor, :apellido, :titulo, :serie, :editorial, :edicion, :fecha, :isbn
    
    def initialize(&block)
        if block_given?  
            instance_eval &block
        end
    end
    
    def <=> (other)
        @edicion <=> other.edicion
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
    attr_accessor :isbn
    
    def initialize (&block)
       if block_given?  
        if block.arity == 1
            yield self
        else
            instance_eval &block 
        end
       end
    end  
    
    def isbn(isbn)
        @isbn = isbn 
    end
    
    def to_s
        "ISBN: #@isbn"
    end
end

class Revista < Biblio
    attr_accessor :revista, :paginas
    
    def initialize (&block)
       if block_given?  
        instance_eval &block 
       end
    end
    
    def revista(name)
        @revista = name
    end
    
    def to_s
        "Revista: #@revista"
    end
end

class Periodico < Biblio
    attr_reader :periodico
    
    def initialize (&block)
       if block_given?
        instance_eval &block 
       end
    end
    
    def periodico(name)
        @periodico = name
    end
    
    def to_s
        "Periodico: #@periodico"
    end
end

class Electronico < Biblio
    attr_reader :editorial
    
    def initialize (&block)
       if block_given?
        instance_eval &block 
       end
    end   
    
    def editorial(name)
        @editorial = name 
    end
    
    def to_s
        "Electronico: #@editorial"
    end
end