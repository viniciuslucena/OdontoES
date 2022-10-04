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