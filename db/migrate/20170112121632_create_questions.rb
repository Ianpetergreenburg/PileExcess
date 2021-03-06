class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content, {null: false}
      t.integer :author_id, {null: false}
      t.string :title, {null: false}
      t.index :author_id

      t.timestamps null:false
    end
  end
end
