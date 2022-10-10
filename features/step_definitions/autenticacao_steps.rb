Given('estou na tela de criar admin') do
  visit '/admins/new'
end

When('eu preencho os campos de Nome {string}, Email {string}, Senha {string}') do |nome, email, senha|
  fill_in 'admin[nome]', :with => nome
  fill_in 'admin[email]', :with => email
  fill_in 'admin[password]', :with => senha
  fill_in 'admin[password_confirmation]', :with => senha
end

When('clico em Create Admin') do
  click_button 'Create Admin'
end

Given('estou na tela de login de admin') do
  visit '/admins/sign_in'
end

When('eu preencho os campos de Email {string}, Senha {string}') do |email, senha|
  fill_in 'admin[email]', :with => email
  fill_in 'admin[password]', :with => senha
end

When('clico em Login') do
  click_button 'Entrar'
end

Given('estou na tela inicial') do
  visit '/home_page/index'
  page.has_content?('HomePage')
end

When('eu clico em sair') do
  find('div.sair', text: 'sair').click_link('sair')
end