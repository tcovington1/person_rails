class CreateHumen < ActiveRecord::Migration[6.0]
  def change
    create_table :humen do |t|
      t.string :name
      t.integer :age
      t.string :hair_color
      t.string :eye_color
      t.string :gender
      t.boolean :alive

      t.timestamps
    end
  end
end
