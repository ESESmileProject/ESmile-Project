class CreateRecepcionists < ActiveRecord::Migration[7.0]
  def change
    create_table :recepcionists do |t|
      t.string :nome

      t.timestamps
    end
  end
end
