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
end
