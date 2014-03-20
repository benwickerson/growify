require 'spec_helper'

describe Vegetable do

  before do
    @vegetable = Vegetable.new(name: "beetroot", family_id: 1, description: "blah blah")
  end

  subject { @vegetable }

  it { should respond_to(:name) }
  it { should respond_to(:family_id) }
  it { should respond_to(:description) }

  it { should be_valid } 

end
