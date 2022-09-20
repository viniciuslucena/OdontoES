
Given ('que existe um paciente de Nome {string}, Data de Nascimento {string}, CPF {string}, Email {string}, Cep {string}, Cidade {string}, Bairro {string}, Logradouro {string} e Complemento {string}') do |nome, dataNascimento, cpf, email, cep, cidade, bairro, logradouro, complemento|
  visit '/pacientes/new'
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => dataNascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento
  click_button 'Create Paciente'
  visit '/pacientes'
end

When('clico no paciente de Nome {string}') do |nome|
  click_on "#{nome}"
end

When('clico em Edit') do
  click_on 'Edit'
end

When('preencho o campo de Logradouro {string}') do |complemento|
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento

end

When('preencho o campo de Cpf {string}') do |cpf|
  fill_in 'paciente[cpf]', :with => cpf

end

When('clico em Update Paciente') do
  click_button 'Update Paciente'
end

Given('que estou na tela de criar Paciente') do
  visit '/pacientes/new'
end

When('eu preencho os campos de Nome {string}, Data de Nascimento {string}, CPF {string}, Email {string}, Cep {string}, Cidade {string}, Bairro {string}, Logradouro {string} e Complemento {string}') do |nome, dataNascimento, cpf, email, cep, cidade, bairro, logradouro, complemento|
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => dataNascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[endereco_attributes][cep]', :with => cep
  fill_in 'paciente[endereco_attributes][cidade]', :with => cidade
  fill_in 'paciente[endereco_attributes][bairro]', :with => bairro
  fill_in 'paciente[endereco_attributes][logradouro]', :with => logradouro
  fill_in 'paciente[endereco_attributes][complemento]', :with => complemento

end

When('clico em Create Paciente') do
  click_button 'Create Paciente'
end

Then('eu vejo a mensagem {string}') do |mensagem|
  page.has_content?(mensagem)
end

When('clico em Destroy') do
  click_button 'Destroy'
end

Then('eu vejo a mensagem de paciente removido com sucesso') do
  page.has_content?('Paciente was successfully destroyed.')
end

Then('eu vejo a mensagem de erro {string}') do |erro|
  page.has_content?(erro)
end