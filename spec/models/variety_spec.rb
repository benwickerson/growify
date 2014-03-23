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

require 'spec_helper'

describe Variety do

  before do 
    @variety = Variety.new(name: "Golden Wonder", vegetable_id: 1, description: "blah blah blah", brand_id: 1)
  end

  subject { @variety }

  it { should belong_to(:vegetable) }
  it { should belong_to(:brand) }

  it { should be_valid }

  describe "when vegetable_id missing" do
    before { @variety.vegetable_id = nil }
    it { should_not be_valid }
  end

  describe "when brand_id is missing" do 
    before { @variety.brand_id = nil }
    it { should_not be_valid }
  end

end
