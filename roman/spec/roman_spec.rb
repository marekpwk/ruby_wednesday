require_relative "spec_helper"

describe Roman do

  it "converts 'i' to 1" do
    roman = Roman.new

    roman.convert_to_arabic("i").should eq 1
  end

  it "converts ii to 2" do
    roman = Roman.new

    roman.convert_to_arabic("ii").should eq 2
  end

  it "converts v to 5" do
    roman = Roman.new

    roman.convert_to_arabic("v").should eq 5
  end

  it "converts x to 10" do
    roman = Roman.new

    roman.convert_to_arabic("x").should eq  10
  end

  it "converts xx to 20" do
    roman = Roman.new

    roman.convert_to_arabic("xx").should eq  20
  end

  it "converts l to 50" do
    roman = Roman.new

    roman.convert_to_arabic("l").should eq  50
  end

  it "converts iv to 4" do
    roman = Roman.new

    roman.convert_to_arabic("iv").should eq  4
  end

  it "converts ix to 9" do
    roman = Roman.new

    roman.convert_to_arabic("ix").should eq  9
  end

  it "converts xcviii to 98" do
    roman = Roman.new

    roman.convert_to_arabic("xcviii").should eq  98
  end

  it "converts mcm to 1900" do
    roman = Roman.new

    roman.convert_to_arabic("mcm").should eq  1900
  end
end
