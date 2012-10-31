class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :category_id
      
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
