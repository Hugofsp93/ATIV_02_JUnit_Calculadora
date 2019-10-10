require 'rails_helper'

RSpec.describe Triangle, type: :model do
  before(:all) do
    @triangle1 = create(:triangle)
    puts "Iniciando testes"
  end

  before(:each) do
    puts "Teste da classe triângulo"
  end

  # Valido
  it "is_valid_triangle" do
    triangle = Triangle.new
    expect(triangle.is_triangle(1, 1, 1))
  end
  
  # Equilatero
  it "is_equi_triangle" do
    triangle = Triangle.new
    expect(triangle.is_triangle(2, 2, 2))
  end
    
  # Isóceles
  it "is_iso_triangle" do
    triangle = Triangle.new
    expect(triangle.is_triangle(2, 2, 3))
  end

  # Escaleno
  it "is_esc_triangle" do
    triangle = Triangle.new
    expect(triangle.is_triangle(3, 4, 2))
  end
  
  # Inválido em valores (falha)
  it "is_invalid_triangle" do
    triangle = Triangle.new
    expect(triangle.is_triangle(1, 1, 3))
  end

  # Inválido missing_params
  it "is_invalid_triangle" do
    triangle = Triangle.new
    expect(triangle.is_triangle(1, 3, nil))
  end

  # Inválido wrong_params
  it "is_invalid_triangle" do
    triangle = Triangle.new
    expect(triangle.is_triangle(1, "x", 3))
  end
end
