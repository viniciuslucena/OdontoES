require "test_helper"

class DentistumTest < ActiveSupport::TestCase
  test "criar dentista valido" do
    dentista = Dentistum.new(nome:"Jim Root", telefone:"81997128385", CRO:"54321", cpf:"013.862.694-41")
    assert dentista.save
  end

  test "criar dentista com cro invalido" do
    dentista = Dentistum.new(nome:"Jim Root", telefone:"81 997128385", CRO:"12345678", cpf:"013.862.694-41")
    assert_not dentista.save
  end

  test "criar dentista com cpf invalido" do
    dentista = Dentistum.new(nome:"Jim Root", telefone:"81 997128385", CRO:"12345", cpf:"123.456.789-10")
    assert_not dentista.save
  end
end
