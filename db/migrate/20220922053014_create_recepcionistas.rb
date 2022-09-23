class CreateRecepcionistas < ActiveRecord::Migration[7.0]
  def change
    create_table :recepcionistas do |t|
      t.string :nome
      t.string :cpf
      t.string :email

      t.timestamps
    end
  end
end
