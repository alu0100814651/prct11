require 'spec_helper'
require 'nitz/codigo'

describe Biblio do
    before :each do
        @obj1 = Biblio.new('Dave Thomas')
    end
    
    describe "Primer Conjunto de Pruebas" do
        it "Tiene que existir uno o mas autores" do
            @obj1.autor.should eq('Dave Thomas')
        end
    end
end