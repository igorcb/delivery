require 'spec_helper'

describe Enterprise do
  before { @enterprise = Enterprise.create(description: "Burguer King") }

  subject { @enterprise }

  it { should respond_to(:description) }
  it { should respond_to(:branches) }
  it { should respond_to(:categories) }

  it { should be_valid }

  describe "when description is not present" do
  	before { @enterprise.description = " " }
  	it { should_not be_valid }
  end  

  describe "when description is too long" do
    before { @enterprise.description = "a" * 101 }
    it { should_not be_valid }
  end

end
