# == Schema Information
#
# Table name: brands
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Brand do

  before do 
    @brand = Brand.new(name: "Kings")
  end

  it { should have_many(:varieties) }

end
