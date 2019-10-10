class Triangle < ApplicationRecord

  def is_triangle(lado1, lado2, lado3)
    triangle = Triangle.create(l1: lado1, l2: lado2, l3: lado3)
    triangle_1 = triangle.l1 if triangle.l1 
    triangle_2 = triangle.l2 if triangle.l2
    triangle_3 = triangle.l3 if triangle.l3
    sum_1 = triangle_1 + triangle_2
    sum_2 = triangle_2 + triangle_3
    sum_3 = triangle_1 + triangle_3

    if sum_1 < triangle_3 || sum_2 < triangle_1 || sum_3 < triangle_2
    	puts "Não é um triângulo válido"
    else
		if triangle_1 == triangle_2 == triangle_3
	      puts "É um triângulo equilátero"
	    elsif (triangle_1 == triangle_2 && triangle_2 != triangle_3) || (triangle_1 == triangle_3 && triangle_1 != triangle_2) || (triangle_2 == triangle_3 && triangle_1 != triangle_3)
	      puts "É um triângulo isóceles"
	    elsif triangle_1 != triangle_2 && triangle_2 != triangle_3 && triangle_1 != triangle_3
	      puts "É um triângulo escaleno"
	    elsif 
	      puts "Não é um triângulo válido"
	    else
	      puts "Não é um triângulo válido"
	    end
    end
  end
end
