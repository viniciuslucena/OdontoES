require "test_helper"

class ConsultumTest < ActiveSupport::TestCase
  test "Criar consulta corretamente" do
    paciente = Paciente.new(nome:"John Doe", data_nascimento:"01-01-2000", cpf:"070.126.704-60", email:"johndoe@gmail.com", password:"123456")
    assert paciente.save
    dentista = Dentistum.new(nome:"Jim Root", telefone:"81997128385", CRO:"54321", cpf:"013.862.694-41", especialidade:"Ortodontia", horario_inicio:"08:00", horario_fim:"14:00")
    assert dentista.save
    data = DateTime.parse("#{(DateTime.now+2.day).strftime("%d-%m-%Y")} 11:00")
    consultum = Consultum.new(data_hora: data, paciente: paciente, dentistum: dentista)
    assert consultum.save
  end

  test "Criar consulta com data_hora no passado" do
    paciente = Paciente.new(nome:"John Doe", data_nascimento:"01-01-2000", cpf:"070.126.704-60", email:"johndoe@gmail.com", password:"123456")
    assert paciente.save
    dentista = Dentistum.new(nome:"Jim Root", telefone:"81997128385", CRO:"54321", cpf:"013.862.694-41", especialidade:"Ortodontia", horario_inicio:"08:00", horario_fim:"14:00")
    assert dentista.save

    data = DateTime.parse("10-10-2021 18:00")
    consultum = Consultum.new(data_hora: data, paciente: paciente, dentistum: dentista)
    assert_not consultum.save
  end

  test "Criar consulta com data_hora em horario fora do expediente do dentista" do
    paciente = Paciente.new(nome:"John Doe", data_nascimento:"01-01-2000", cpf:"070.126.704-60", email:"johndoe@gmail.com", password:"123456")
    assert paciente.save
    dentista = Dentistum.new(nome:"Jim Root", telefone:"81997128385", CRO:"54321", cpf:"013.862.694-41", especialidade:"Ortodontia", horario_inicio:"08:00", horario_fim:"14:00")
    assert dentista.save

    data = DateTime.parse("#{(DateTime.now+2.day).strftime("%d-%m-%Y")} 15:00")
    consultum = Consultum.new(data_hora: data, paciente: paciente, dentistum: dentista)
    assert_not consultum.save
  end
end
