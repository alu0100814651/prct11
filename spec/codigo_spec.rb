require 'nitz/codigo.rb'
require 'nitz/libreria_lista.rb'
require 'nitz/apa.rb'
require 'spec_helper.rb'

describe Lista do
    before :each do
        @l1 = Libro.new() do
            isbn '978-1430218333'
        end 
        
        @r1 = Revista.new() do
            revista 'El Museo Canario'
            paginas '27'
        end    
        
        @p1 = Periodico.new() do
            periodico 'Diario Unidad'
        end    
        
        @d1 = Electronico.new() do
            editorial 'Chicago: The University of Chicago Press'
        end    
        
        @listatotal = Lista.new
    end
    
    it "Insertar en la lista" do
        @listatotal.insertarfinish(@l1) 
        @listatotal.insertarfinish(@p1)
        @listatotal.insertarfinish(@r1)
        expect(@listatotal.extraerfinish).to eq(@r1)
    end
    
    
end