require "test_helper"

class AdminTest < ActiveSupport::TestCase
  test "criar admin valido" do
    admin = Admin.new(nome:"Alex Lopes", email:"alex@gmail.com" ,password:"123456")
    assert admin.save
  end

  test "criar admin com nome invalido" do
    admin = Admin.new(nome:"", email:"alex@gmail.com" ,password:"123456")
    assert_not admin.save
  end

  test "criar admin com email invalido" do
    admin = Admin.new(nome:"Alex Lopes", email:"email" ,password:"123456")
    assert_not admin.save
  end
end
