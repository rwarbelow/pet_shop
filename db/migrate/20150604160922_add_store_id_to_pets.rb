class AddStoreIdToPets < ActiveRecord::Migration
  def change
    add_reference :pets, :store, index: true, foreign_key: true
  end
end
