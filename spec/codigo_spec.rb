require 'nitz/codigo.rb'
require 'nitz/libreria_lista.rb'
require 'nitz/apa.rb'
require 'spec_helper'

describe APA do
    before :all do
         @biblio1 = Biblio.new(['Dave', 'Andy'], ['Thomas', 'Hunt'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7 2013', ['9781937785499', '1937785491'], 'The Facets of Ruby')
         @biblio2 = Biblio.new(['Nitesh', 'Nitz'],['Gul', 'Ramnani'],'Cloud9', 'LPP', 1404, 'December 9 2015', ['9781937785499', '1937785491'], 'The Facets of Ruby')
         @biblio3 = Biblio.new(['Scott'],['Chacon'], 'Pro Git 2009th Edition', 'Apress', 2009, 'August 27 2000', ['9781430218333','1430218339'], 'Pro')
         @biblio4 = Biblio.new(['Scott'],['Chacon'], 'Apple', 'Antigeno', 2009, 'August 27 2000', ['9781430218333','1430218339'], 'Pro')
         @revista1 = Revista.new(['David'],['Flanagan'], 'Revista Prueba', 'Probando', 1, '0596586177', 'December 15 2015', 1)
         @periodico1 = Periodico.new(['Maria'], ['Rgez'], 'noticias nuevas y viejas', 'Avisos', 105, ['9781937785499', '1937785491'], 'December 10 2015', 2015)
         @apa1 = APA.new(@biblio1)
         @apa2 = APA.new(@revista1)
         @apa3 = APA.new(@biblio2)
         @apa4 = APA.new(@biblio3)
         @apa5 = APA.new(@biblio4)
         @apa6 = APA.new(@periodico1)
         @lista1 = Lista.new()
         @todos = Orden.new()
    end
    
    describe "pruebas de nombre y apellidos, y ordenacion" do
        it "Nombre y apellido (diversos autores)" do
           expect(@apa1.name).to eq("Autor, T. D. & Autor, H. A.")
           expect(@apa3.name).to eq("Autor, G. N. & Autor, R. N.")
        end
        it "Nombre y apellido (un solo autor)" do
           expect(@apa4.name).to eq("Autor, C. S.")
           expect(@apa6.name).to eq("Autor, R. M.")
        end
        it "Ordenar" do
            expect(@todos.insertar(@apa1)).to eq(true)
            expect(@todos.insertar(@apa2)).to eq(true)
            expect(@todos.insertar(@apa3)).to eq(true)
            expect(@todos.insertar(@apa4)).to eq(true)
            expect(@todos.insertar(@apa5)).to eq(true)
            expect(@todos.ordenacion).to eq([@apa5,@apa4,@apa2,@apa3,@apa1])

        end
    end
    
    describe "comprobando las mayusculas" do
        it "mayuscula (la primera letra de cada palabra del título)" do
            expect(@apa6.get_titulo).to eq('Noticias Nuevas Y Viejas')
        end
    end
    
    describe "comprobando el formato" do
        it "formato" do
            expect(@apa2.to_s).to eq('Nombre del (los) Autor(es): Autor, F. D.; Fecha de publicacion: December 15 2015; Titulo: Revista Prueba; Edicion: 0596586177; Publicacion: Probando.')
        end
    end
end
