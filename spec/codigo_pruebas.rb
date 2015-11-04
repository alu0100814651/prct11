require 'spec_helper'
require 'nitz/codigo'

describe Biblio do
    before :each do
        @obj1 = Biblio.new('Dave Thomas', 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
    end
    
    describe "Primer Conjunto de Pruebas" do
        it "Tiene que existir uno o mas autores" do
            @obj1.autor.should eq('Dave Thomas')
        end
        it "Tiene que existir un titulo" do
            @obj1.titulo.should eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
        end
    end
end