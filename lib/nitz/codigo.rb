class Biblio
    include Comparable
    attr_reader :autor, :apellido, :titulo, :serie, :editorial, :edicion, :fecha, :isbn
    
    def initialize(name, &block)
    self.name = name

    if block_given?  
      if block.arity == 1
        yield self
      else
       instance_eval &block 
      end
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
    attr_accessor :serie, :editorial, :edicion, :isbn
    
    def initialize (titulo, &bloque)
       super(titulo)
       if block_given?  
        if block.arity == 1
            yield self
        else
            instance_eval &block 
        end
       end
    end
    
    def serie(name)
        @serie = name
    end    
    
    def editorial(name)
        @editorial = name
    end    
    
    def edicion(number_of_edition)
        @edicion = number_of_edition 
    end    
    
    def isbn(number_of_isbn)
        @isbn = number_of_isbn 
    end    
end

class Revista < Biblio
    attr_accessor :revista, :paginas
    
    def initialize (titulo, &bloque)
       super(titulo)
       if block_given?  
        if block.arity == 1
            yield self
        else
            instance_eval &block 
        end
       end
    end
    
    def revista(name)
        @revista = name
    end    
    
    def paginas(number_of_pages)
        @paginas = number_of_pages 
    end
    
end

class Periodico < Biblio
    attr_reader :periodico, :pag
    
    def initialize (titulo, &bloque)
       super(titulo)
       if block_given?  
        if block.arity == 1
            yield self
        else
            instance_eval &block 
        end
       end
    end
    
    def periodico(name)
        @periodico = name
    end
    
    def pag(numbers)
        @pag = numbers 
    end
end

class Electronico < Biblio
    attr_reader :editorial
    
    def initialize (titulo, &bloque)
       super(titulo)
       if block_given?  
        if block.arity == 1
            yield self
        else
            instance_eval &block 
        end
       end
    end   
    
    def editorial(name)
        @editorial = name 
    end
end