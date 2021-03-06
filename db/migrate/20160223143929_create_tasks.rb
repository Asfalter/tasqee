class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :finish_date
      t.date :finished_date
      t.boolean :finished

      t.timestamps null: false
    end
  end
end
