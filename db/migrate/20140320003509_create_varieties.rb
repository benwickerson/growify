class CreateVarieties < ActiveRecord::Migration
  def change
    create_table :varieties do |t|
      t.string :name
      t.text :description
      t.references :vegetable, index: true
      t.date :indoor_start
      t.date :indoor_end
      t.date :under_cover_start
      t.date :under_cover_end
      t.date :cold_frame_start
      t.date :cold_frame_end
      t.date :sow_plant_start
      t.date :sow_plant_end
      t.date :overwinter_start
      t.date :overwinter_end
      t.date :harvest_start
      t.date :harvest_end
      t.float :depth
      t.float :space_plants
      t.float :space_rows
      t.float :ph_high
      t.float :ph_low

      t.timestamps
    end
  end
end
