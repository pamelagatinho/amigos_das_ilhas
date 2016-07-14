class CreateAmigos < ActiveRecord::Migration
  def change
    create_table :amigos do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.text :endereco
      t.string :aniversario

      t.timestamps null: false
    end
  end
end
