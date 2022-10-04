When('eu preencho os campos de Nome {string}, Telefone {string}, CRO {string}, CPF {string}, Especialidade {string}, Horario inicio {string}, Horario fim {string}') do |nome, telefone, cro, cpf, especialidade, horarioIn, horarioOut|
  fill_in 'dentistum[nome]', :with => nome
  fill_in 'dentistum[telefone]', :with => telefone
  fill_in 'dentistum[CRO]', :with => cro
  fill_in 'dentistum[cpf]', :with => cpf
  fill_in 'dentistum[especialidade]', :with => especialidade
end

Given('estou na tela de criar Dentista') do
  visit '/dentista/new'
end

When('clico em Create Dentistum') do
  click_button 'Create Dentistum'
end

Given('que existe um dentista de Nome {string}, Telefone {string}, CRO {string}, CPF {string}, Especialidade {string}, Horario inicio {string}, Horario fim {string}') do |nome, telefone, cro, cpf, especialidade, horarioIn, horarioOut|
  visit '/dentista/new'
  fill_in 'dentistum[nome]', :with => nome
  fill_in 'dentistum[telefone]', :with => telefone
  fill_in 'dentistum[CRO]', :with => cro
  fill_in 'dentistum[cpf]', :with => cpf
  fill_in 'dentistum[especialidade]', :with => especialidade
  click_button 'Create Dentistum'
  page.has_content?('Dentistum  was successfully created.')
end

Given('estou na pagina do dentista com nome {string}') do |nome|
  visit "/dentista/#{Dentistum.find_by_nome(nome).id}"
end

When('clico em Update Dentistum') do
  click_button 'Update Dentistum'
end

When('preencho o campo de Cro {string}') do |nome|
  fill_in 'dentistum[nome]', :with => nome
end

When('preencho o campo de Cpf em Dentista {string}') do |cpf|
  fill_in 'dentistum[cpf]', :with => cpf
end

When('preencho o campo de Cro em Dentista {string}') do |cpf|
  fill_in 'dentistum[cpf]', :with => cpf
end

Then('eu vejo a mensagem de erro ao editar dentista com cpf invalido') do
  page.has_content?('Cpf formato ou numero errado')
end

Then('eu vejo a mensagem de erro ao editar dentista com cro invalido') do
  page.has_content?('Cro is too long (maximum is 7 characters)')
end