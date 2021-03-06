#Pruebas (spec) de matrices

require 'matrices'

describe Matriz do

	before :each do
        	@matriz = Matriz.new([1,1,1],[1,1,1],[1,1,1])
        	@matriz2 = Matriz.new([1,1,1],[1,1,1],[1,1,1])
	end

        it "Comprueba si es una matriz cuadrada" do
                expect { Matriz.new([2,3,3],[3,4],[1,2,3]) }.to raise_error
                expect { Matriz.new([2,3,3],[1,2,3]) }.to raise_error
        end

	it "Acceso a los elementos de la matriz" do
                @matriz[0][0].should eq(1)
                @matriz[0][1].should eq(1)
                @matriz[0][2].should eq(1)
                @matriz[1][0].should eq(1)
                @matriz[1][1].should eq(1)
                @matriz[1][2].should eq(1)
                @matriz[2][0].should eq(1)
                @matriz[2][1].should eq(1)
                @matriz[2][2].should eq(1)
        end

        it "Suma de dos matrices" do
                @matriz3 = @matriz+@matriz2
                @matriz3[0][0].should eq(2)
                @matriz3[0][1].should eq(2)
                @matriz3[0][2].should eq(2)
                @matriz3[1][0].should eq(2)
                @matriz3[1][1].should eq(2)
                @matriz3[1][2].should eq(2)
                @matriz3[2][0].should eq(2)
                @matriz3[2][1].should eq(2)
                @matriz3[2][2].should eq(2)
        end

        it "Resta de dos matrices" do
                @matriz3 = @matriz-@matriz2
                @matriz3[0][0].should eq(0)
                @matriz3[0][1].should eq(0)
                @matriz3[0][2].should eq(0)
                @matriz3[1][0].should eq(0)
                @matriz3[1][1].should eq(0)
                @matriz3[1][2].should eq(0)
                @matriz3[2][0].should eq(0)
                @matriz3[2][1].should eq(0)
                @matriz3[2][2].should eq(0)
        end

        it "Multiplicación de dos matrices" do
                @matriz3 = @matriz*@matriz2
                @matriz3[0][0].should eq(3)
                @matriz3[0][1].should eq(3)
                @matriz3[0][2].should eq(3)
                @matriz3[1][0].should eq(3)
                @matriz3[1][1].should eq(3)
                @matriz3[1][2].should eq(3)
                @matriz3[2][0].should eq(3)
                @matriz3[2][1].should eq(3)
                @matriz3[2][2].should eq(3)
        end

end
