class Calc < ApplicationRecord
  validates :divider, :dividend, presence: true

  def soma(a, b)
    a + b
  end

  def divisao(a, b)
    a / b
  end
  
  def raiz(a)
    Math.sqrt(a)
  end
end
