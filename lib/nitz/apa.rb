require 'nitz/codigo'
require 'nitz/libreria_lista'

class APA
    include Comparable
    attr_reader :bibliog, :nombre
    def initialize (biblio)
        @bilbiog = biblio
    end
    
    def nomape
        tam = @bibliog.x.length
        for var in 1..tam-1
            mensaje = "#{mensaje}"+"Autor, #{@o.ap[var][0]}. #{@o.x[var][0]}. &"
        end
        mensaje = "#{mensaje}"+"Autor, #{@o.ap[tam][0]}. #{@o.x[tam][0]}."
    end
    
    def <=> (other)n 1
        if(@o.ap == other.ap)
            if(@o.s == other.s)
               @o.y <=> other.y
            else
                @o.s <=> other.s
            end
        else
            @o.ap <=> ohter.ap
        end
    end
    
end