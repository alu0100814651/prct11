require 'spec_helper'
require 'nitz/codigo'
require 'nitz/libreria_lista'

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

describe Lista do
    before :each do
        
        @bib1 = Biblio.new('Dave Thomas', 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'The Facets of Ruby', 'Pragmatic Bookshelf', '4', 'July 7 2013', ['9781937785499','1937785491'])
        @bib2 = Biblio.new('Scott Chacon', 'Pro Git 2009th Edition', 'Pro', 'Apress', '2009', 'August 27 2009', ['9781430218333','1430218339'])
        @bib3 = Biblio.new('David Flanagan', 'The Ruby', 'Programming Language', 'O’Reilly Media', '1', 'February 4 2008', ['0596516177','9780596516178'])
        @bib4 = Biblio.new('David Chelimsky', 'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends', 'The Facets of Ruby', 'Pragmatic Bookshelf', '1', 'December 25 2010', ['1934356379','9781934356371'])
        @bib5 = Biblio.new('Richard E. Silverman','Git', 'Pocket Guide', 'O’Reilly Media', '1', 'August 2 2013', ['1449325866','9781449325862'])
        @bib6 = Biblio.new('David Chelimsky', 'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends', 'The Facets of Ruby', 'Pragmatic Bookshelf', '4', 'December 25 2010', ['1934356379','9781934356371'])
        
        @l1 = Lista.new()
        @l2 = Lista.new()
        @l3 = Lista.new()
        @l4 = Lista.new()
        @l4.insertarfinish(1)
        @l4.insertarfinish(2)
        @l4.insertarfinish(3)
        @l4.insertarfinish(4)
        @l4.insertarfinish(5)

    end
    
    describe "Creamos una lista" do
        it "El nodo inicial es nil" do
            expect(@l1.start).to eq(nil)
        end
        
        it "El nodo final tmb es nil" do
            expect(@l1.finish).to eq(nil)
        end

        it "Debe existir el método vacía" do
            expect(@l1.vacia).to eq(true)
        end

        it "Debe existir el método insertar" do
            expect(@l1.insertarstart(@bib1)).to eq(true)
        end

        it "Debe existir el método extraer" do
            expect(@l2.insertarstart(@bib1)).to eq(true)
            expect(@l2.extraerstart).to eq(@bib1)
        end
    
        it "Podemos insertar mas de un elemento" do
            
            expect(@l1.insertarstart(@bib1)).to eq(true)
            expect(@l1.insertarstart(@bib2)).to eq(true)
            expect(@l1.insertarstart(@bib3)).to eq(true)
            expect(@l1.insertarstart(@bib4)).to eq(true)
            expect(@l1.insertarstart(@bib5)).to eq(true)
        end
    
        it "Podemos extraer mas de un elemento" do
            
            expect(@l3.insertarfinish(@bib1)).to eq(true)
            expect(@l3.insertarfinish(@bib2)).to eq(true)
            expect(@l3.insertarfinish(@bib3)).to eq(true)
            expect(@l3.insertarfinish(@bib4)).to eq(true)
            expect(@l3.insertarfinish(@bib5)).to eq(true)
            
            expect(@l3.extraerstart).to eq(@bib1)
            expect(@l3.extraerstart).to eq(@bib2)
            expect(@l3.extraerstart).to eq(@bib3)
            expect(@l3.extraerstart).to eq(@bib4)
            expect(@l3.extraerstart).to eq(@bib5)
        end
    end
    
    describe "Comparable" do
      it "menor que" do
        expect(@bib3<@bib1).to eq(true)
      end
      it "menor o igual que" do
        expect(@bib3<=@bib5).to eq(true)
      end
      it "mayor que" do
        expect(@bib1>@bib3).to eq(true)
      end
      it "mayor o igual que" do
        expect(@bib1>=@bib6).to eq(true)
      end
      it "igual que" do
        expect(@bib1==@bib1).to eq(true)
      end
      it "distinto de" do
        expect(@bib1==@bib4).to eq(false)
      end
    end
    
    describe "Enumerable" do
        it "comprobrando el metodo all? con un bloque vacio" do
            expect(@l4.all?).to eq(true)
        end
        it "comprobrando el metodo any?" do
            expect(@l4.any?).to eq(true)
        end
        it "comprobrando el metodo collect" do
            expect(@l4.map{|i| i*i}).to eq([1,4, 9, 16, 25])
            expect(@l4.collect{|i| i*i}).to eq([1,4, 9, 16, 25])
        end
        it "comprobrando el metodo count" do
            expect(@l4.count).to eq(5)
        end
        it "comprobrando el metodo detect" do
            expect(@l4.detect {|i| i == 1}).to eq(1)
            expect(@l4.find {|i| i == 1}).to eq(1)
        end
        it "comprobrando drop" do
            expect(@l4.drop(4)).to eq([1])
        end
    end
    
    
end

describe Libro do
    before :all do
        @lib1 = Libro.new('David Chelimsky', 'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends', 'The Facets of Ruby', 'Pragmatic Bookshelf', '1', 'December 25 2010', ['1934356379','9781934356371'])
    end
    
    describe "Pruebas de Libro" do
        it "Instancia" do
           expect(@lib1.instance_of?Libro).to eq(true)
        end
        it "Bibliografia" do
            expect(@lib1.is_a?Biblio).to eq(true)
        end
        it "Object" do
            expect(@lib1.is_a?Object).to eq(true)
        end
        it "BasicObject" do
            expect(@lib1.is_a?BasicObject).to eq(true)
        end
    end
end

describe Revista do
    before :all do
        @revista = Revista.new('David Chelimsky', 'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends', 'The Facets of Ruby', 'Pragmatic Bookshelf', '1', 'December 25 2010', ['1934356379','9781934356371'])
    end
    
    describe "Pruebas de Revista" do
        it "Instancia" do
           expect(@revista.instance_of?Revista).to eq(true)
        end
        it "Bibliografia" do
            expect(@revista.is_a?Biblio).to eq(true)
        end
        it "Object" do
            expect(@revista.is_a?Object).to eq(true)
        end
        it "BasicObject" do
            expect(@revista.is_a?BasicObject).to eq(true)
        end
    end
end

describe Periodico do
    before :all do
        @periodico = Periodico.new('David Chelimsky', 'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends', 'The Facets of Ruby', 'Pragmatic Bookshelf', '1', 'December 25 2010', ['1934356379','9781934356371'])
    end
    
    describe "Pruebas de Periódico" do
        it "Instancia" do
           expect(@periodico.instance_of?Periodico).to eq(true)
        end
        it "Bibliografia" do
            expect(@periodico.is_a?Biblio).to eq(true)
        end
        it "Object" do
            expect(@periodico.is_a?Object).to eq(true)
        end
        it "BasicObject" do
            expect(@periodico.is_a?BasicObject).to eq(true)
        end
    end
end

describe Electronico do
    before :all do
        @electronico = Electronico.new('David Chelimsky', 'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends', 'The Facets of Ruby', 'Pragmatic Bookshelf', '1', 'December 25 2010', ['1934356379','9781934356371'])
    end
    
    describe "Pruebas de Elextrónico" do
        it "Instancia" do
           expect(@electronico.instance_of?Electronico).to eq(true)
        end
        it "Bibliografia" do
            expect(@electronico.is_a?Biblio).to eq(true)
        end
        it "Object" do
            expect(@electronico.is_a?Object).to eq(true)
        end
        it "BasicObject" do
            expect(@electronico.is_a?BasicObject).to eq(true)
        end
        it "Tipo" do
            expect(@electronico.respond_to?:isbnlibro).to eq(false)
        end
    end
end