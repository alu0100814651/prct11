require 'spec_helper'
require 'nitz/codigo'

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
      
    it "Existe un metodo para obtener el listado de autores." do 
         @obj1.obtenautor.should == ('Dave Thomas')
     end
     it "Existe un metodo para obtener el titulo." do 
         @obj1.obtentitulo.should == ('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
     end
     it "Existe un metodo para obtener la serie." do 
         @obj1.obtenserie.should == ('The Facets of Ruby')
     end
     it "Existe un metodo para obtener la editorial." do 
         @obj1.obteneditorial.should == ('Pragmatic Bookshelf')
     end
     it "Existe un metodo para obtener el numero de edicion." do 
         @obj1.obtenedicion.should == ('4')
     end
     it "Existe un metodo para obtener la fecha de publicacion." do 
         @obj1.obtenfecha.should == ('July 7, 2013')
     end
     it "Existe un metodo para obtener el ISBN." do 
         @obj1.obtenisbn.should == (['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
     end
     it "Existe un metodo para obtener la referencia formateada." do
         @obj1.to_s.should == ("Autor: Dave Thomas, Título: Programming Ruby 1.9 & 2.0: The Pragmatic Programmers Guide, Serie: The Facets of Ruby, Editorial: Pragmatic Bookshelf, 4 Edición, Fecha de Publicación: July 7, 2013 y ISBN: [\"ISBN-13: 978-1937785499\", \"ISBN-10: 1937785491\"]")
     end
  end
end