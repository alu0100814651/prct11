require 'nitz/codigo'
require 'nitz/libreria_lista'

class APA
    include Comparable
    attr_reader :bibliog, :nombre
    def initialize (biblio)
        @bibliog = biblio
    end
    
    def nomape
        tam = @bibliog.autor.length
        i = 0
        for i in 0..tam-2
            mensaje = "#{mensaje}"+"Autor, #{@bibliog.apellido[i][0]}. #{@bibliog.autor[i][0]}. & "
        end
        i=i+1
        mensaje = "#{mensaje}"+"Autor, #{@bibliog.apellido[i][0]}. #{@bibliog.autor[i][0]}."
    end
    
    def <=> (other)n 1
        if(@bibliog.apellido == other.apellido)
            if(@bibliog.fecha == other.fecha)
               @bibliog.titulo <=> other.titulo
            else
                @bibliog.fecha <=> other.fecha
            end
        else
            @bibliog.apellido <=> ohter.apellido
        end
    end
    
    def get_titulo
        size = @bibliog.titulo.length
        @bibliog.titulo[0] = @bibliog.titulo[0].capitalize
        i=0
        while i < size
            if (@bibliog.titulo[i] == " ")
                bibliog.titulo[i+1] = bibliog.titulo[i+1].capitalize
            end
            i = i+1
        end
        @bibliog.titulo
    end
end