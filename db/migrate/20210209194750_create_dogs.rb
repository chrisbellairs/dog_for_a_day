class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.text :biography
      t.string :breed
      t.integer :age
      t.integer :size
      t.boolean :good_with_children
      t.integer :walk
      t.integer :energy
      t.integer :friendly
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
