require 'spec_helper'

describe Picker do
  it { should respond_to(:name) }

  it { should respond_to(:desc) }
  
  it "should create a Picker" do
    Picker.create.should be_true
  end
end
