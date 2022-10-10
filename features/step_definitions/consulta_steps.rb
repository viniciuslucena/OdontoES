Given('estou na tela de criar Consulta') do
  visit '/consulta/new'
end

When('eu seleciono o paciente de Nome {string}, Dentista {string}, Horario {string}') do |paciente, dentista, data|
  select paciente, from: 'consultum_paciente_id'
  select dentista, from: 'consultum_dentistum_id'
  date_object = DateTime.strptime(data, '%d/%m/%Y - %H:%M')
  select date_object.year, from: 'consultum_data_hora_1i'
  select Date::MONTHNAMES[date_object.month], from: 'consultum_data_hora_2i'
  select date_object.day, from: 'consultum_data_hora_3i'
  select date_object.hour, from: 'consultum_data_hora_4i'
  select date_object.minute == 0 ? '00' : '30', from: 'consultum_data_hora_5i'
end

When('clico em Create Consultum') do
  click_button 'Create Consultum'
end

Given('existe uma consulta para o paciente de Nome {string} e medico {string}') do |paciente, medico|
  visit '/consulta/new'
  select paciente, from: 'consultum_paciente_id'
  select medico, from: 'consultum_dentistum_id'
  date_object = DateTime.strptime('07/10/2027 - 10:00', '%d/%m/%Y - %H:%M')
  select date_object.year, from: 'consultum_data_hora_1i'
  select Date::MONTHNAMES[date_object.month], from: 'consultum_data_hora_2i'
  select date_object.day, from: 'consultum_data_hora_3i'
  select date_object.hour, from: 'consultum_data_hora_4i'
  select date_object.minute == 0 ? '00' : '30', from: 'consultum_data_hora_5i'
  click_button 'Create Consultum'
end

When('eu seleciono a consulta do paciente {string}') do |nome|
  paciente = Paciente.find_by_nome(nome).id
  consulta = Consultum.find_by_paciente_id(paciente).id
  visit "/consulta/" + String(consulta)
end

Given('clico no botao Editar') do
  click_link 'Editar'
end

When('preencho o campo de Dentista com {string}') do |nome|
  select nome, from: 'consultum_dentistum_id'
end

When('clico em Update Consultum') do
  click_button 'Update Consultum'
end

When('clico em Apagar') do
  click_button 'Apagar'
end
