require 'spec_helper'
require 'nitz/codigo'
require 'nitz/libreria_cola'

describe Biblio do
    before :each do
        @obj1 = Biblio.new('Dave Thomas', 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'The Facets of Ruby', 'Pragmatic Bookshelf', '4', 'July 7, 2013', ['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
    end
    
    describe "Primer Conjunto de Pruebas" do
        it "Tiene que existir uno o mas autores" do
            @obj1.autor.should eq('Dave Thomas')
        end
        it "Tiene que existir un titulo" do
            @obj1.titulo.should eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
        end
        it "Tiene que existir o no una serie" do
            @obj1.serie.should eq('The Facets of Ruby')
        end
        it "Tiene que existir una editorial" do
            @obj1.editorial.should eq('Pragmatic Bookshelf')
        end
        it "Tiene que existir un numero de edicion" do
            @obj1.edicion.should eq('4')
        end
        it "Tiene que existir una fecha de publicacion" do
            @obj1.fecha.should eq('July 7, 2013')
        end
        it "Tiene que existir uno o mas numeros ISBN" do
            @obj1.isbn.should eq(['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        end
    end
    
    
    describe "Metodos" do
      
    it "Existe un metodo para obtener el autor" do 
         @obj1.obtenautor.should == ('Dave Thomas')
     end
     it "Existe un metodo para obtener el titulo" do 
         @obj1.obtentitulo.should == ('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
     end
     it "Existe un metodo para obtener la serie" do 
         @obj1.obtenserie.should == ('The Facets of Ruby')
     end
     it "Existe un metodo para obtener la editorial" do 
         @obj1.obteneditorial.should == ('Pragmatic Bookshelf')
     end
     it "Existe un metodo para obtener el numero de edicion" do 
         @obj1.obtenedicion.should == ('4')
     end
     it "Existe un metodo para obtener la fecha de publicacion" do 
         @obj1.obtenfecha.should == ('July 7, 2013')
     end
     it "Existe un metodo para obtener el ISBN" do 
         @obj1.obtenisbn.should == (['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
     end
     it "Existe un metodo para obtener la referencia formateada" do
         @obj1.to_s.should == ("Autor: Dave Thomas, Titulo: Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide, Serie: The Facets of Ruby, Editorial: Pragmatic Bookshelf, 4 Edicion, Fecha de Publicacion: July 7, 2013 y ISBN: [\"ISBN-13: 978-1937785499\", \"ISBN-10: 1937785491\"]")
     end
  end
end

  describe Cola do
    before :all do
        
        #Ejemplos 
        @bib1 = Biblio.new('Dave Thomas', 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'The Facets of Ruby', 'Pragmatic Bookshelf', '4', 'July 7 2013', ['9781937785499', '1937785491'])
        @bib2 = Biblio.new('Scott Chacon', 'Pro Git 2009th Edition', 'Pro', 'Apress', '2009', 'August 27 2009', ['9781430218333','1430218339'])
        @bib3 = Biblio.new('David Flanagan', 'The Ruby', 'Programming Language', 'O’Reilly Media', '1', 'February 4 2008', ['0596516177','9780596516178'])
        @bib4 = Biblio.new('David Chelimsky', 'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends', 'The Facets of Ruby', 'Pragmatic Bookshelf', '1', 'December 25 2010', ['1934356379','9781934356371'])
        @bib5 = Biblio.new('Richard E. Silverman','Git', 'Pocket Guide', 'O’Reilly Media', '1', 'August 2 2013', ['1449325866','9781449325862'])
        
        @cola1 = Cola.new()
        @cola2 = Cola.new()
        @cola3 = Cola.new()
    end
    
    describe "Creamos una cola" do
        it "El nodo inicial es nil" do
            expect(@cola1.start).to eq(nil)
        end
        it "El nodo final tmb es nil" do
            expect(@cola1.finish).to eq(nil)
        end
    end
    
    describe "Vemos si la cola está vacía" do
        it "Debe existir el método 'vacía'" do
            expect(@cola2.vacia).to eq(true)
        end
    end
    
    describe "Insertar elemento en cola" do
        it "Debe existir este método" do
            expect(@cola2.insertar(@bib1)).to eq(true)
        end
    end
    
    describe "Extraer de la cola" do
        it "Debe existir este método" do
            expect(@cola2.insertar(@bib1)).to eq(true)
            expect(@cola2.extraer).to eq(@bib1)
        end
    end
    
    describe "Insertar mas de un elemento en la cola" do
        it "Podemos insertar mas de un elemento en la cola" do
            
            expect(@cola3.insertar(@bib1)).to eq(true)
            expect(@cola3.insertar(@bib2)).to eq(true)
            expect(@cola3.insertar(@bib3)).to eq(true)
            expect(@cola3.insertar(@bib4)).to eq(true)
            expect(@cola3.insertar(@bib5)).to eq(true)
        end
    end
    
    describe "Se deberia poder extraer mas de un elemento de la cola" do
        it "Podemos extraer mas de un elemento de la cola" do
            
            expect(@cola3.insertar(@bib1)).to eq(true)
            expect(@cola3.insertar(@bib2)).to eq(true)
            expect(@cola3.insertar(@bib3)).to eq(true)
            expect(@cola3.insertar(@bib4)).to eq(true)
            expect(@cola3.insertar(@bib5)).to eq(true)
            
            expect(@cola3.extraer).to eq(@bib1)
            expect(@cola3.extraer).to eq(@bib2)
            expect(@cola3.extraer).to eq(@bib3)
            expect(@cola3.extraer).to eq(@bib4)
            expect(@cola3.extraer).to eq(@bib5)
        end
    end
end