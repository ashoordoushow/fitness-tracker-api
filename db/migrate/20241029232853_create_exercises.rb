class CreateExercises < ActiveRecord::Migration[7.1]
  def change
    create_table :exercises do |t|
      t.integer :workout_id
      t.string :name
      t.integer :reps
      t.string :sets

      t.timestamps
    end
  end
end
