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
