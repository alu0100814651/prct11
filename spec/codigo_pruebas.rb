require 'spec_helper'
require 'niz/codigo'

describe Biblio do
    before :each do
        @obj1 = Biblio.new['Dave Thomas']
    end
    
    describe "Primer Conjunto de Pruebas" do
        it "Tiene que existir uno o mas de un autores" do
        @obj1.autor.should eq(['Dave Thomas'])
    end
end