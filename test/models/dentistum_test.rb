require "test_helper"

class DentistumTest < ActiveSupport::TestCase
  test "should create dentista" do
    assert_difference('Dentistum.count') do
      Dentistum.create(nome: "João Silva", especialidade: "12345678900", telefone: "1234", endereco: "rua teste", dia_semana: "segunda-feira", horario_inicio:"2000-01-01 12:45:00", horario_fim: "2000-01-01 13:45:00" )
    end
  end

  test "should update dentista" do
    dentista = Dentistum.create(nome: "João Silva", especialidade: "12345678900", telefone: "1234")
    dentista.update(nome: "Maria Souza")
    assert_equal "Maria Souza", dentista.nome
  end

  test "should read dentista" do
    dentista = Dentistum.create(nome: "João Silva", especialidade: "12345678900", telefone: "1234")
    assert_equal "João Silva", dentista.nome
  end

  test "should delete dentista" do
    dentista = Dentistum.create(nome: "João Silva", especialidade: "12345678900", telefone: "1234")
    assert_difference('Dentistum.count', -1) do
      dentista.destroy
    end
  end
end
