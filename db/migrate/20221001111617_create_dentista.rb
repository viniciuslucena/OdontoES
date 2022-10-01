class CreateDentista < ActiveRecord::Migration[7.0]
  def change
    create_table :dentista do |t|
      t.string :nome
      t.string :telefone
      t.string :CRO
      t.string :cpf

      t.timestamps
    end
  end
end
