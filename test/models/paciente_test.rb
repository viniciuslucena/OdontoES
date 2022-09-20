require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test "criar paciente valido" do
    paciente = Paciente.new(nome:"John Doe", data_nascimento:"08-07-1995", cpf:"070.126.704-60", email:"johndoe@gmail.com")
    assert paciente.save
  end

  test "criar paciente com nome invalido" do
    paciente = Paciente.new(nome:"", data_nascimento:"08-07-1995", cpf:"070.126.704-60", email:"johndoe@gmail.com")
    assert_not paciente.save
  end

  test "criar paciente com data de nascimento invalida" do
    paciente = Paciente.new(nome:"John Doe", data_nascimento:"08-07-1995", cpf:"070.126.704-60", email:"johndoe@gmail.com")
    assert_not paciente.save
  end
end
