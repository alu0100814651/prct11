require 'nitz/codigo.rb'
require 'nitz/libreria_lista.rb'
require 'nitz/apa.rb'
require 'spec_helper.rb'

describe Lista do
    before :each do
        @l1 = Libro.new('Pro Git 2009th Edition') do
            autor 'Scott Chacon'
            fecha 'August 27, 2009'
            serie 'Pro'
            editorial 'Apress'
            edicion '2009 edition'
            isbn '978-1430218333'
        end 
        
        @r1 = Revista.new('Documentos sobre la musica en la catedral de Las Palmas') do
            autor 'Lucas Torre'
            fecha '3 marzo 2006'
            revista 'El Museo Canario'
            paginas '27'
        end    
        
        @p1 = Periodico.new('Idiotas o ciudadanos') do
            autor 'Jesus Monedero' 
            fecha '29 junio 2014'
            periodico 'Diario Unidad'
            numeros_paginas '21-24'
        end    
        
        @d1 = Electronico.new('Beyond the MLA handbook') do
            autor 'Andrew Harnack'
            fecha '4 abril 1997'
            tipo_medio 'en línea'
            editorial 'Chicago: The University of Chicago Press'
            via '<http://falcon.eku.edu/honors/ beyond-mla/>'
        end    
        
        @listatotal = Lista.new
    end
    
    it "Insertar en la lista" do
        @listatotal.insertarfinish(@l1) 
        @lista.insertarfinish(@p1)
        @lista.insertarfinish(@r1)
        expect(@lista.extraerfinish).to eq(@r1)
    end
    
    
end