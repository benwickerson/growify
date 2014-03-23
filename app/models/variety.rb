# == Schema Information
#
# Table name: varieties
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  description       :text
#  vegetable_id      :integer
#  indoor_start      :date
#  indoor_end        :date
#  under_cover_start :date
#  under_cover_end   :date
#  cold_frame_start  :date
#  cold_frame_end    :date
#  sow_plant_start   :date
#  sow_plant_end     :date
#  overwinter_start  :date
#  overwinter_end    :date
#  harvest_start     :date
#  harvest_end       :date
#  depth             :float
#  space_plants      :float
#  space_rows        :float
#  ph_high           :float
#  ph_low            :float
#  created_at        :datetime
#  updated_at        :datetime
#  brand_id          :integer
#

class Variety < ActiveRecord::Base
  belongs_to :vegetable
  belongs_to :brand

  validates :vegetable_id, presence: true
  validates :brand_id, presence: true
  
end
