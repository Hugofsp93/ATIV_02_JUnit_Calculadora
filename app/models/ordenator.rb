class Ordenator < ApplicationRecord
  
  def inserir_colecao(a)
    x = Ordenator.create(value: a)
    ordenators = Ordenator.all
    max_value = ordenators.max_by { |max| max[:value] }[:value]
    if x.value <= max_value
      puts "Valor criado não é o maior valor e foi substituído com sucesso"
    else
      puts "Valor criado é o maior valor"
    end
  end
  
  def informar_valor(a)
    x = Ordenator.create(value: a)
    ordenator = Ordenator.all
    max_value = ordenator.max_by { |max| max[:value] }[:value]
    puts max_value
  end
  
  def maior_valor(a)
    ordenators = Ordenator.all
    max_value = ordenators.max_by { |max| max[:value] }[:value]
    ordenator = Ordenator.create(value: a)
    if ordenator.value >= max_value
      puts "Maior valor: #{ordenator.value}"
    else
      puts "Maior valor: #{max_value}"
    end
  end
  
  def menor_valor(a)
    ordenators = Ordenator.all
    min_value = ordenators.min_by { |min| min[:value] }[:value]
    ordenator = Ordenator.create(value: a)
    if ordenator.value <= min_value
      puts "Menor valor: #{ordenator.value}"
    else
      puts "Menor valor: #{min_value}"
    end
  end

  def valor_medio
    ordenators = Ordenator.all
    soma = Ordenator.sum(:value)
    qtd = ordenators.count
    med_value = soma/qtd
    puts med_value.to_f
  end

  def valor_mediana
    ordenators = Ordenator.all
    soma = ordenators.sum(:value)
    qtd = ordenators.count
    if qtd % 2 != 0
      med_value = ((soma/qtd) + 1)/2
      puts med_value.to_f
    else
      med_value = soma/qtd
      puts med_value.to_f
    end
  end

end
