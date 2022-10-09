Given('que estou na tela de criar Paciente') do
  visit '/pacientes/new'
end
When('eu preencho os campos de Nome {string}, Data de Nascimento {string}, CPF {string}, Email {string}, Senha {string}') do |nome, dataNascimento, cpf, email, senha|
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => dataNascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[password]', :with => senha
  fill_in 'paciente[password_confirmation]', :with => senha
end
When('estou logado com o administrador com o usuario {string} e senha {string}') do |usuario, senha|
  visit '/admins/sign_in'
  fill_in 'admin[email]', :with => usuario
  fill_in 'admin[password]', :with => senha
  click_button 'Log in'
  page.has_content?('Signed in successfully.')
end
When('estou na tela de criar Paciente') do
  visit '/pacientes/new'
end
When('clico em Create Paciente') do
  click_button 'Create Paciente'
end
Then('eu vejo a mensagem {string}') do |mensagem|
  page.has_content?(mensagem)
end

Then('eu vejo a mensagem de erro {string}') do |erro|
  page.has_content?(erro)
end

Given('que existe um paciente de Nome {string}, Data de Nascimento {string}, CPF {string}, Email {string} e Senha {string}') do |nome, dataNascimento, cpf, email, senha|
  visit '/pacientes/new'
  fill_in 'paciente[nome]', :with => nome
  fill_in 'paciente[data_nascimento]', :with => dataNascimento
  fill_in 'paciente[cpf]', :with => cpf
  fill_in 'paciente[email]', :with => email
  fill_in 'paciente[password]', :with => senha
  fill_in 'paciente[password_confirmation]', :with => senha
  click_button 'Create Paciente'
  page.has_content?('Paciente was successfully created.')
end

Given('estou na pagina do paciente com nome {string}') do |nome|
  visit "/pacientes/#{Paciente.find_by_nome(nome).id}"
end

When('clico em Update Paciente') do
  click_button 'Update Paciente'
end

When('clico em Editar') do
  click_link 'Editar'
end

When('preencho o campo de Cpf {string}') do |cpf|
  fill_in 'paciente[cpf]', :with => cpf
end

When('preencho o campo de Nome {string}') do |nome|
  fill_in 'paciente[nome]', :with => nome
end

Given('clico em Destroy') do
  click_button 'Apagar'
end
