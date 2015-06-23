require 'spec_helper'
 
describe Generators do
  
	before :each do
    @generator = Generators.new
	end

  describe "generator constructor" do
    it "creates a new object of generator" do
        @generator.should be_an_instance_of Generators
        @data.should be_nil
    end
  end

  describe "Import data from file" do
    it "imports file contents in generators data members" do
        data = @generator.import
        data.should_not be_nil
    end
  end

  describe "Calculate Mwh power" do
    it "Generate report from file data" do
      @generator.import
      report = @generator.calculate_mwh
      report.size.should be > 0
    end

    it "report when there is no data" do
      report = @generator.calculate_mwh
      report.size.should  be(0)
    end
  end

end