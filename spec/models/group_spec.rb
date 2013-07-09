require 'spec_helper'

describe Group do
  before { @group = Group.create(description: "Fast Food") }

  subject { @group }

  it { should respond_to(:description) }

  it { should be_valid }

  describe "when description is not present" do
  	before { @group.description = " " }
  	it { should_not be_valid }
  end  

  describe "when description is too long" do
    before { @group.description = "a" * 101 }
    it { should_not be_valid }
  end

end
