class Triangle < ApplicationRecord

  def is_triangle(lado1, lado2, lado3)
    triangle = Triangle.create(l1: lado1, l2: lado2, l3: lado3)
    
    if triangle.l1 
      triangle_1 = triangle.l1
    else
      triangle_1 = 0
      error = "Lado 1 não foi informado, é nulo ou 0 e não pode ser testado."
    end

    if triangle.l2
      triangle_2 = triangle.l2
    else
      triangle_2 = 0
      error = "Lado 2 não foi informado, é nulo ou 0 e não pode ser testado."
    end

    if triangle.l3
      triangle_3 = triangle.l3
    else
      triangle_3 = 0
      error = "Lado 3 não foi informado, é nulo ou 0 e não pode ser testado."
    end

    sum_1 = triangle_1 + triangle_2
    sum_2 = triangle_2 + triangle_3
    sum_3 = triangle_1 + triangle_3

    if sum_1 < triangle_3 || sum_2 < triangle_1 || sum_3 < triangle_2
    	puts "Não é um triângulo válido: #{error}"
    else
      if triangle_1 == triangle_2 && triangle_2 == triangle_3
          puts "É um triângulo equilátero"
        elsif (triangle_1 == triangle_2 && triangle_2 != triangle_3) || (triangle_1 == triangle_3 && triangle_1 != triangle_2) || (triangle_2 == triangle_3 && triangle_1 != triangle_3)
          puts "É um triângulo isóceles"
        elsif triangle_1 != triangle_2 && triangle_2 != triangle_3 && triangle_1 != triangle_3
          puts "É um triângulo escaleno"
        elsif
          puts "Não é um triângulo válido: #{error}"
        else
          puts "Não é um triângulo válido: #{error}"
        end
      end
  end
end
