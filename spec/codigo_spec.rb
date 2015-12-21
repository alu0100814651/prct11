require 'nitz/codigo.rb'
require 'nitz/libreria_lista.rb'
require 'nitz/apa.rb'
require 'spec_helper.rb'

describe Lista do
    before :each do
        @l1 = Libro.new() do
            isbn '123456789987654321'
        end 
        
        @r1 = Revista.new() do
            revista 'El Museo Canario'
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
        expect(@listatotal.extraerfinish).to eq(@p1)
        expect(@listatotal.extraerfinish).to eq(@l1)
    end
    
    it "comprobar el correcto funcionamiento de Libro" do
        expect(@l1.to_s).to eq('ISBN: 123456789987654321')
    end
    
end