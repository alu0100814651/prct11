require 'nitz/codigo.rb'
require 'nitz/libreria_lista.rb'
require 'nitz/apa.rb'
require 'spec_helper'

describe APA do
    before :all do
         @biblio1 = Biblio.new(['Dave', 'Andy'], ['Thomas', 'Hunt'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7 2013', ['9781937785499', '1937785491'], 'The Facets of Ruby')
         @biblio2 = Biblio.new(['Nitesh'],['Gul'],'Cloud9', 'LPP', 1404, 'December 9 2015' ,['9781937785499', '1937785491'], 'The Facets of Ruby')
         @apa1 = APA.new(@biblio1)
         @l1 = Lista.new()
    end
    
    describe "pruebas" do
        it "Nombre y apellido" do
           expect(@apa1.nomape).to eq("Autor, T. D. & Autor, H. A.")
        end
        it "Ordenar" do
            @l1.insertarfinish(@biblio2)
            @l1.insertarfinish(@biblio1)
            @l1.sort
            expect(@l1.extraerstart).to eq(@biblio2)
            expect(@l1.extraerstart).to eq(@biblio1)
        end
        
    end
    
end
