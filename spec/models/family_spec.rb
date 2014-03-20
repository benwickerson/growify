require 'spec_helper'

describe Family do

  before do
    @family = Family.new(common_name: "Beetroot", family_name: "Amaranthaceae")
  end

  subject { @family }

  it { should respond_to(:common_name) }
  it { should respond_to(:family_name) }

  it { should be_valid }

end
