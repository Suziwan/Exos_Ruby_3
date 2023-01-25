require_relative '../lib/caesar_cipher'

describe "the caesar_cipher method" do
  it "test one letter only with or without upcase" do
    expect(caesar_cipher("a", 1)).to eq("b")
    expect(caesar_cipher("A", 1)).to eq("B")
  end

  it "test words with or without upcase" do
    expect(caesar_cipher("salut", 9)).to eq("bjudc")
    expect(caesar_cipher("Salut", 9)).to eq("Bjudc")
  end

  it "test a string with spaces and symbols" do
    expect(caesar_cipher("Th@t should W0rk", 20)).to eq("Nb@n mbiofx Q0le")
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it "test a string with a shift higher than 26" do
    expect(caesar_cipher("hello world", 28)).to eq("jgnnq yqtnf")
    expect(caesar_cipher("What a string!", 35)).to eq("Fqjc j bcarwp!")
  end
end
