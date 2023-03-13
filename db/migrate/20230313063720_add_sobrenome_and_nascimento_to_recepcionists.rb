class AddSobrenomeAndNascimentoToRecepcionists < ActiveRecord::Migration[7.0]
  def change
    add_column :recepcionists, :sobrenome, :string
    add_column :recepcionists, :nascimento, :date
  end
end
