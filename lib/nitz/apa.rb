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
    
    def to_s
        if @bibliog.instance_of?Revista
            bibli = "Nombre del (los) Autor(es): #{name}; Fecha de publicacion: #{@bibliog.fecha}; Titulo: #{@bibliog.titulo}; Edicion: #{@bibliog.edicion}; Publicacion: #{@bibliog.serie}."
        end
    end
end