# encoding: utf-8
require 'Question/simple_expec'

module Question
 class SimpleExpec
describe Question::SimpleExpec  do

	before :each do 
		@nodo = Node.new(7,nil, nil)
		@milista = Lista.new()
		@milista.push(7)
		@listavac = Lista.new()
	end

	describe "Creacion lista" do
		it "Comprobacion cabeza de la lista" do
			expect(@milista.head).to eq(@nodo)
		end

		it "Comprobacion valor del nodo" do
			expect(@nodo.value).to eq(7)
		end

		it "Extracción primer elemento" do
			expect(@milista.pop).to eq(7)
		end

		it "Añadimos valor (push)" do
			@listavac.push(0)
			expect(@listavac.head.value).to eq(0)     
		end

		it "Añadimos valor antes" do
			@listavac.push(65)
			@listavac.pushbefore(70)
			expect(@listavac.head.value).to eq (70)
			expect(@listavac.head.next.value).to eq (65)

		end
		
		it "Se Pregunta verdadero falso" do	
			@PVF = TrueFalse.new("2.-) Es apropiado que una clase Tablero herede de una clase Juego.")
			expect(@PVF.to_s).to eq ("2.-) Es apropiado que una clase Tablero herede de una clase Juego.\na) Cierto\nb) Falso\n")
		end

		it "Introducir varios elementos despues" do
			VarElm = Lista.new()
			VarElm.mulpush([3,4,5])
			expect(VarElm.to_s).to eq("3 4 5")	
		end
		
		it "Introducir varios elementos antes" do
			VarElmAntes = Lista.new()
			VarElmAntes.mulpushbefore([8,7,9])
			expect(VarElmAntes.to_s).to eq("9 7 8")
		end


		it "Prueba para la siguiente relaciónn de preguntas de selección simple (imprimir de la 1 - 5 y de la 5 a la 1)." do

 			@p1 = "1.-)¿Cuál es la salida del siguiente código Ruby?\nclass Xyz\n\tdef pots\n\t\t@nice\n\tend\nend\n\nxyz = Xyz.new\np xyz.pots"
			@opP1 = {
				"a" => "#<Xyz:0xa000208>",
				"b" => "nil",
				"c" => "0",
				"d" => "Ninguna de las anteriores"
			}

			@p2 = "2.-)La siguiente definicion de hash en Ruby es valida\nhash_raro = {\n\t[1,2,3] => Object.new(),\n\tHash.new => :toto\n}"
			@opP2 = {
				"a" => "Cierto",
				"b" => "Falso",
			}

			@p3 = "3.-)¿Cual es la salida del siguiente codigo en Ruby?\nclass Array\n\tdef say_hi\n\t\t\"HEY!\"\n\tend\nend\n\np [1, \"bob\"].say_hi"
			@opP3 = {
				"a" => "1",
				"b" => "Bob",
				"c" => "HEY!",
				"D" => "Ninguna de las anteriores"
			}

			@p4 = "4.-)¿Cual es el tipo del objeto en el siguiente codigo en Ruby?\nclass Objeto\nend"

			@opP4 = {
				"a" => "Una instancia de la clase Class",
				"b" => "Una constante",
				"c" => "Un objeto",
				"D" => "Ninguna de las anteriores"
			}

			@p5 ="5.-)Es apropiado que una clase Tablero herede de una clase juego."

			@opP5 ={
				"a" => "Cierto",
				"b" => "Falso"
			}

			@NP1 = SimpleSelection.new(@p1,@opP1)
 			@NP2 = SimpleSelection.new(@p2,@opP2)
 			@NP3 = SimpleSelection.new(@p3,@opP3)
 			@NP4 = SimpleSelection.new(@p4,@opP4)
 			@NP5 = SimpleSelection.new(@p5,@opP5)

 			Examen = Lista.new()
			Examen.push(@NP1)
 			Examen.push(@NP2)
 			Examen.push(@NP3)
 			Examen.push(@NP4)
 			Examen.push(@NP5)

			expect(Examen.to_s).to eq(@NP1.to_s + " " + @NP2.to_s + " " + @NP3.to_s + " " + @NP4.to_s + " " +@NP5.to_s)
			
#			expect(Examen.imprinver).to eq(@NP5.to_s + " " + @NP4.to_s + " " + @NP3.to_s + " " + @NP2.to_s + " " +@NP1.to_s)

		end

	end
end
end
end

