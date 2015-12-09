require 'nitz/codigo.rb'
require 'nitz/libreria_lista.rb'
require 'nitz/apa.rb'
require 'spec_helper'

describe APA do
    before :all do
         @biblio1 = Bibliografia.new(['Dave', 'Andy'], ['Thomas', 'Hunt'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7 2013', ['9781937785499', '1937785491'], 'The Facets of Ruby')
         @biblio2 = Bibliografia.new(['Omar'],['Alvarez'],'Marca', 'Futbol', 12, 'December 9 2015' ,['9781937785499', '1937785491'], 'The Facets of futbol')
         @apa1 = APA.new(@biblio1)
         @l1 = Listaenlazada.new()
    end
    
    describe "pruebas" do
        it "Nombre y apellido" do
           expect(@apa1.nomape).to eq("Autor, T. D. Autor, H. A. ")
        end
        it "2" do
            @l1.insertf(@biblio1)
            @l1.insertf(@biblio2)
            @l1.sort
            expect(@l1.extractb).to eq(@biblio2)
            expect(@l1.extractb).to eq(@biblio1)
        end
        
    end
    
end
