class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.integer :adoption_fee

      t.timestamps null: false
    end
  end
end
