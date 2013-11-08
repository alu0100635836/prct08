#PRACTICA 8
class Matriz

	def initialize(*col) #col recoge en un array las filas de nuestra matriz.
                @matriz = Array.new()
                for i in col do
                        if i.size == col.size then #nos aseguramos que es una matriz cuadrada.
                                @matriz.push(i)
                        else
                                raise "La matriz debe ser cuadrada"
                        end
                end
                @dimension = col.size #Guardamos en una variable de instancia la dimension de la matriz.
        end

        def [] (*ij) #Recibe un numero de argumentos...
                return @matriz[*ij] if ij.size == 1 #si el numero de argumentos es solo 1, entonces devolvemos toda la fila indicada.
         @matriz[ij.first][ij.last] #si son 2, devuelveme el elemento indicado.
        end

        def +(other) #Para la suma de matrices
                matriz3 = Array.new(@dimension) {|i| #creamos un array de arrays, de dimension @dimension, y cuya contenido en la posicion[i][j] será el resultado del bloque.
                	Array.new(@dimension) {|j|
                	@matriz[i][j] + other[i][j]
                	}
		}
   	end

end

