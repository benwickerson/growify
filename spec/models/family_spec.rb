# == Schema Information
#
# Table name: families
#
#  id          :integer          not null, primary key
#  common_name :string(255)
#  family_name :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Family do

  before do
    @family = Family.new(common_name: "Beetroot", family_name: "Amaranthaceae")
  end

  subject { @family }

  it { should respond_to(:common_name) }
  it { should respond_to(:family_name) }

  it { should have_many(:vegetables) }

  it { should be_valid }

end
