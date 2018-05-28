class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :body
      t.integer :upvotes
      t.integer :reports
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
