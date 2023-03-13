class CreateDentista < ActiveRecord::Migration[7.0]
  def change
    create_table :dentista do |t|
      t.string :nome
      t.string :especialidade
      t.string :telefone
      t.string :endereco
      t.string :dia_semana
      t.time :horario_inicio
      t.time :horario_fim

      t.timestamps
    end
  end
end
