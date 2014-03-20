class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string  :name
      t.integer :family_id
      t.text    :description

      t.timestamps
    end
  end
end
