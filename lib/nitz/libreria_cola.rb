Nodo = Struct.new(:value,:next)

class Cola
    attr_reader :start, :finish
    
    def initialize()
        @start = nil
        @finish = nil
    end
    
    def vacia
        if (@start == nil)
            return true
        else
            return false
        end
    end
    
    def insertar (elem)

        nodo = Nodo.new(elem,nil)

        if(vacia == true)
            @finish = nodo
            @start = nodo
        else

            @finish.next = nodo
            @finish = nodo
        end
        true
    end
    
    def extraer
        if(vacia == true)
            return false
        else

            valor = @start.value
            @start = @start.next
            return valor
        end
    end
        
end