class AddEspecilialidadeToDentistum < ActiveRecord::Migration[7.0]
  def change
    add_column :dentista, :especialidade, :string
  end
end
