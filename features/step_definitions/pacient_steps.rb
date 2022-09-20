Given('que estou na tela de criar Paciente') do
  visit '/pacientes/sign_up'
end
When('eu preencho os campos de Nome {string}, Data de Nascimento {string}, CPF {string}, Email {string}, Senha {string}') do |nome, dataNascimento, cpf, email, senha|
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => dataNascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'pacientes[senha]', :with => senha

end
When('clico em Create Paciente') do
  click_button 'Sign up'
end
Then('eu vejo a mensagem {string}') do |mensagem|
  page.has_content?(mensagem)
end

Then('eu vejo a mensagem de erro {string}') do |erro|
  page.has_content?(erro)
end

Given('que existe um paciente de Nome {string}, Data de Nascimento {string}, CPF {string}, Email {string}') do |nome, dataNascimento, cpf, email|
  visit '/pacientes/sign_up'
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => dataNascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  click_button 'Sign up'
  visit '/home_page/index'
end

Given('clico no paciente de Nome {string}') do |nome|
  click_on "#{nome}"
 end

Given('clico em Edit') do
  click_on 'Edit'
end

When('clico em Update Paciente') do
  click_button 'Update Paciente'
end

When('preencho o campo de Cpf {string}') do |cpf|
  fill_in 'paciente[cpf]', :with => cpf
end

When('preencho o campo de Nome {string}') do |nome|
  fill_in 'paciente[nome]', :with => nome
end

Given('clico em Destroy') do
  click_button 'Destroy'
end

Then('eu vejo a mensagem de paciente removido com sucesso') do
  page.has_content?('Paciente was successfully destroyed.')
end