class CreateResumes < ActiveRecord::Migration[8.1]
  def change
    create_table :resumes do |t|
      t.references :user, null: false, foreign_key: true
      t.text :data
      t.integer :score
      t.text :skills
      t.text :improved

      t.timestamps
    end
  end
end
