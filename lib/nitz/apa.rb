require 'nitz/codigo'
require 'nitz/libreria_lista'

class APA
    include Comparable
    attr_reader :bibliog, :nombre
    def initialize (biblio)
        @bibliog = biblio
    end
    
    def name
        tam = @bibliog.autor.length
        i = 0
        if(tam == 1)
            mensaje = "#{mensaje}"+"Autor, #{@bibliog.apellido[i][0]}. #{@bibliog.autor[i][0]}."
        else
            for i in 0..tam-2
                mensaje = "#{mensaje}"+"Autor, #{@bibliog.apellido[i][0]}. #{@bibliog.autor[i][0]}. & "
            end
            i=i+1
            mensaje = "#{mensaje}"+"Autor, #{@bibliog.apellido[i][0]}. #{@bibliog.autor[i][0]}."
        end
    end
    
    def <=> (other)
        if(@bibliog.apellido == other.bibliog.apellido)
            if(@bibliog.fecha == other.bibliog.fecha)
               @bibliog.titulo <=> other.bibliog.titulo
            else
                @bibliog.fecha <=> other.bibliog.fecha
            end
        else
            @bibliog.apellido <=> other.bibliog.apellido
        end
    end
    
    def get_titulo
        lent = @bibliog.titulo.length
        @bibliog.titulo[0] = @bibliog.titulo[0].capitalize
        for var in 0..lent-1
            if (@bibliog.titulo[var] == " ")
                bibliog.titulo[var+1] = bibliog.titulo[var+1].capitalize
            end
        end
        @bibliog.titulo
    end
    
    def to_s
        if @bibliog.instance_of?Revista
            "Nombre del (los) Autor(es): #{name}; Fecha de publicacion: #{@bibliog.fecha}; Titulo: #{@bibliog.titulo}; Edicion: #{@bibliog.edicion}; Publicacion: #{@bibliog.serie}."
        end
    end
end