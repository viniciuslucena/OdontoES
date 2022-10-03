class AddHorariosToDentistum < ActiveRecord::Migration[7.0]
  def change
    add_column :dentista, :horario_inicio, :time
    add_column :dentista, :horario_fim, :time
  end
end
