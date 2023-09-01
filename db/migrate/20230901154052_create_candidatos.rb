class CreateCandidatos < ActiveRecord::Migration[7.0]
  def change
    create_table :candidatos do |t|
      t.string :nome
      t.string :email
      t.string :cpf
      t.date :data
      t.string :telefone

      t.timestamps
    end
  end
end
