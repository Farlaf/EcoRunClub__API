class CreateWorkouts < ActiveRecord::Migration[7.1]
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :trainer
      t.string :name
      t.text :description
      t.string :location
      t.decimal :price

      t.timestamps
    end
  end
end
