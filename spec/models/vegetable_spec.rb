# == Schema Information
#
# Table name: vegetables
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  family_id   :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Vegetable do

  before do
    @vegetable = Vegetable.new(name: "beetroot", family_id: 1, description: "blah blah")
  end

  subject { @vegetable }

  it { should respond_to(:name) }
  it { should respond_to(:family_id) }
  it { should respond_to(:description) }

  it { should belong_to(:family) }
  it { should have_many(:varieties) }

  it { should be_valid }

  describe "when family_id not present" do
    before { @vegetable.family_id = nil }
    it { should_not be_valid }
  end

end
