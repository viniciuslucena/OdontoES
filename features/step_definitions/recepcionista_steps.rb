Given('estou na tela de criar Recepcionista') do
  visit '/recepcionistas/new'
end

When('eu preencho os campos de Nome {string}, CPF {string}, Email {string}, Senha {string}, Confirmar senha {string}') do |nome, cpf, email, senha, confirmar|
  fill_in 'recepcionista[nome]', :with => nome
  fill_in 'recepcionista[cpf]', :with => cpf
  fill_in 'recepcionista[email]', :with => email
  fill_in 'recepcionista[password]', :with => senha
  fill_in 'recepcionista[password_confirmation]', :with => confirmar
end

When('clico em Create Recepcionista') do
  click_button 'Create Recepcionista'
end

Given('que existe um recepcionista de Nome {string}, CPF {string}, Email {string}, Senha {string}, Confirmar senha {string}') do |nome, cpf, email, senha, confirmar|
  visit '/recepcionistas/new'
  fill_in 'recepcionista[nome]', :with => nome
  fill_in 'recepcionista[cpf]', :with => cpf
  fill_in 'recepcionista[email]', :with => email
  fill_in 'recepcionista[password]', :with => senha
  fill_in 'recepcionista[password_confirmation]', :with => confirmar
  click_button 'Create Recepcionista'
  page.has_content?('Recepcionista was successfully created')
end

Given('estou na pagina do recepcionista com nome {string}') do |nome|
  visit "/recepcionistas/#{Recepcionista.find_by_nome(nome).id}"
end

When('preencho o campo de Nome do recepcionista {string}') do |nome|
  fill_in 'recepcionista[nome]', :with => nome
end

When('preencho o campo de Email do recepcionista {string}') do |email|
  fill_in 'recepcionista[email]', :with => email
end

When('clico em Update Recepcionista') do
  click_button 'Update Recepcionista'
end
