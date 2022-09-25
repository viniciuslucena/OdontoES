require "test_helper"

class RecepcionistaTest < ActiveSupport::TestCase
  test "criar recepcionista valido" do
    recepcionista = Recepcionista.new(nome:"John Doe", cpf:"070.126.704-60", email:"johndoe@gmail.com", password:"123456")
    assert recepcionista.save
  end

  test "criar recepcionista com email invalido" do
    recepcionista = Recepcionista.new(nome:"John Doe", cpf:"070.126.704-60", email:"johndoegmail", password:"123456")
    assert_not recepcionista.save
  end

  test "criar recepcionista com cpf invalido" do
    recepcionista = Recepcionista.new(nome:"John Doe", cpf:"070", email:"johndoe@gmail.com", password:"123456")
    assert_not recepcionista.save
  end
end
