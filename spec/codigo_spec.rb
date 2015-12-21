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
            revista 'Revista LPP'
        end    
        
        @p1 = Periodico.new() do
            periodico 'El Dia'
        end    
        
        @e1 = Electronico.new() do
            editorial 'ULL ETSII'
        end    
        
        @listatotal = Lista.new
    end
    
    it "Insertar en la lista" do
        @listatotal.insertarfinish(@l1) 
        @listatotal.insertarfinish(@p1)
        @listatotal.insertarfinish(@r1)
        @listatotal.insertarfinish(@e1)
        expect(@listatotal.extraerfinish).to eq(@e1)
        expect(@listatotal.extraerfinish).to eq(@r1)
        expect(@listatotal.extraerfinish).to eq(@p1)
        expect(@listatotal.extraerfinish).to eq(@l1)
    end
    
    it "comprobar el correcto funcionamiento de Libro" do
        expect(@l1.to_s).to eq('ISBN: 123456789987654321')
    end
    
    it "comprobar el correcto funcionamiento de Revista" do
        expect(@r1.to_s).to eq('Revista: Revista LPP')
    end
    
    it "comprobar el correcto funcionamiento de Periodico" do
        expect(@l1.to_s).to eq('Periodico: El Dia')
    end
    
    it "comprobar el correcto funcionamiento de Electronico" do
        expect(@l1.to_s).to eq('Electronico: ULL ETSII')
    end
    
end