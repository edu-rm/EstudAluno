class CreateAlternatives < ActiveRecord::Migration[5.1]
  def change
    create_table :alternatives do |t|
      t.references :question, foreign_key: true, null:false
      t.string :descricao, null:false

      t.timestamps
    end
  end
end
