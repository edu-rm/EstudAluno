class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.text :description, null:false
      t.references :user, foreign_key: true
      t.boolean :active, default:true

      t.timestamps
    end
  end
end
