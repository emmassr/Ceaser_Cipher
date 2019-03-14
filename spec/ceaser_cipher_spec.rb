require "ceaser_cipher"
describe CeaserCipher do
  it "returns message input as unchanged when cipher number is 0" do
    cipher = CeaserCipher.new
    result = cipher.encode("a", 0 )
    expect(result).to eq("a")
  end

  it "returns message input offset by 1 place when cipher number is 1" do
    cipher = CeaserCipher.new
    result = cipher.encode("a", 1)
    expect(result).to eq("b")
  end

  it "returns message input offset by 2 places when cipher number if 2" do
    cipher = CeaserCipher.new
    result = cipher.encode("a", 2)
    expect(result).to eq("c")
  end

  it "returns message input of two letters offset by 2 places when cipher number if 2" do
    cipher = CeaserCipher.new
    result = cipher.encode("ab", 2)
    expect(result).to eq("cd")
  end
  it "returns message input of last letter looping back to the beginning when cipher number is 1" do
    cipher = CeaserCipher.new
    result = cipher.encode("z", 1)
    expect(result).to eq("a")
  end
  it "returns special character" do
      cipher = CeaserCipher.new
      result = cipher.encode("!", 2)
      expect(result).to eq("!")
  end
  it "returns encoded word with special character when offset by 1" do
      cipher = CeaserCipher.new
      result = cipher.encode("hello!", 1)
      expect(result).to eq("ifmmp!")
  end
end
