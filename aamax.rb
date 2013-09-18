describe "roman numerals" do
  it "should convert 1..3 to I" do
    (1..3).each do |i|
      convert(i).should == "I"*i
    end
  end

  it "should convert 1000 to M" do 
    convert(1000).should == "M"
  end

  it "should convert 1001 to MI" do 
    convert(1001).should == "MI"
  end

  it "should convert 500 to D" do 
    convert(500).should == "D"
  end
  it "should convert 100 to C" do 
    convert(100).should == "C"
  end
  it "should convert 50 to L" do 
    convert(50).should == "L"
  end
  it "should convert 10 to X" do 
    convert(10).should == "X"
  end
  it "should convert 5 to V" do 
    convert(5).should == "V"
  end
 it "should convert 4 to IV" do
   convert(4).should == "IV"
 end
 it "should convert 9 to IX" do
   convert(9).should == "IX"
 end

 it "should convert 40 to IL" do
   convert(40).should == "XL"
 end

 it "should convert 90 to XCIX" do
   convert(90).should == "XC"
 end
 it "should convert 400 to CD" do
   convert(400).should == "CD"
 end
 it "should convert 900 to CM" do
   convert(900).should == "CM"
 end

 it "should convert 4999 to MMMMCMXCIX" do
   convert(4999).should == "MMMMCMXCIX"
 end
 it "should convert 49 to XLIX" do
   convert(49).should == "XLIX"
 end

 it "should convert 99 to XCIX" do
   convert(99).should == "XCIX"
 end

end

def convert(val, carry="")
  if val >= 1000
    val -= 1000
    carry = convert(val, carry+"M")
  elsif val >= 900
    val -= 900
    carry = convert(val, carry+"CM")
  elsif val >= 500
    val -= 500
    carry = convert(val, carry+"D")
  elsif val >= 400
    val -= 400
    carry = convert(val, carry+"CD")
  elsif val >= 100
    val -= 100
    carry = convert(val, carry+"C")
  elsif val >= 90
    val -= 90
    carry = convert(val, carry+"XC")
  elsif val >= 50
    val -= 50
    carry = convert(val, carry+"L")
  elsif val >= 40
    val -= 40
    carry = convert(val, carry+"XL")    
  elsif val >= 10
    val -= 10
    carry = convert(val, carry+"X")
  elsif val == 9
    val -= 9
    carry = convert(val, carry+"IX")
  elsif val >= 5
    val -= 5
    carry = convert(val, carry+"V")
  elsif val == 4
    val -= 4
    carry = convert(val, carry+"IV")
  elsif val >= 1
    val -= 1
    carry = convert(val, carry+"I")
  end
  carry
end