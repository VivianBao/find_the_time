class CreateHuddles < ActiveRecord::Migration[6.0]
  def change
    create_table :huddles do |t|
      t.string :title
      t.string :confirmed_time
      t.string :status
      t.boolean :hosting
      t.boolean :checked
      t.string :time_range

      t.timestamps
    end
  end
end
