class AddNomeToAdmins < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :nome, :string
  end
end
