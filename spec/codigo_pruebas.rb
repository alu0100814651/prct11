require 'spec_helper'
require 'nitz/codigo'

describe Biblio do
    before :each do
        @obj1 = Biblio.new('Dave Thomas', 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', '(The Facets of Ruby)', 'Pragmatic Bookshelf;', '4')
    end
    
    describe "Primer Conjunto de Pruebas" do
        it "Tiene que existir uno o mas autores" do
            @obj1.autor.should eq('Dave Thomas')
        end
        it "Tiene que existir un titulo" do
            @obj1.titulo.should eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
        end
        it "Tiene que existir o no una serie" do
            @obj1.serie.should eq('(The Facets of Ruby)')
        end
        it "Tiene que existir una editorial" do
            @obj1.editorial.should eq('Pragmatic Bookshelf;')
        end
        it "Tiene que existir un numero de edicion" do
            @obj1.edicion.should eq('4')
    end
end