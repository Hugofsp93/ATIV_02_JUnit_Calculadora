class Ordenator < ApplicationRecord
  
  def inserir_colecao(a)
    x = Ordenator.create(value: a)
    ordenator = Ordenator.all
    max_value = ordenator.max_by { |max| max[:value] }[:value]
    if x.value == max_value
      "Valor criado é o maior valor"
    else
      x.value = max_value
      x.save
      "Valor criado não é o maior valor e foi substituído com sucesso"
    end
  end
  
  def informar_valor
      
  end
  
  def maior_valor
    ordenator = Ordenator.all
    max_value = ordenator.max_by { |max| max[:value] }[:value]
    puts "Maior valor: #{max_value}"
  end
  
  def menor_valor
    ordenator = Ordenator.all
    min_value = ordenator.min_by { |min| min[:value] }[:value]
    puts "Menor valor: #{min_value}"
  end

  def valor_medio
    
  end

  def valor_mediana
    
  end

end
