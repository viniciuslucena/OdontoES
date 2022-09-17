require "test_helper"

class PacienteTest < ActiveSupport::TestCase
  test "criar paciente valido" do
    paciente = Paciente.new(nome:"Daniel", data_nascimento:"17-02-2001", cpf:"013.862.694-41", email:"danielduarte@gmail.com")
    assert paciente.save
  end

  test "criar paciente com nome invalido" do
    paciente = Paciente.new(nome:"", data_nascimento:"17-02-2001", cpf:"013.862.694-41", email:"danielduartefilho.df@gmail.com")
    assert_not paciente.save
  end

  test "criar paciente com data de nascimento invalida" do
    paciente = Paciente.new(nome:"Daniel", data_nascimento:"17-02-2025", cpf:"013.862.694-41", email:"danielduartefilho.df@gmail.com")
    assert_not paciente.save
  end

end
