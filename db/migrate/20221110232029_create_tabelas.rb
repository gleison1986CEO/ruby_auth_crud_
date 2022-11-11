class CreateTabelas < ActiveRecord::Migration[7.0]
  def change
    create_table :tabelas do |t|
      t.string :nome
      t.string :email
      t.string :whatsapp

      t.timestamps
    end
  end
end
