describe 'class PigLatinizer' do
  let!(:words) { PigLatinizer.new }


  it 'can create a new instance of a class' do
    expect(PigLatinizer.new).to be_an_instance_of(PigLatinizer)
  end

  it 'piglatinizes an individual word' do
    expect(words.piglatinize("pork")).to eq("orkpay")
    expect(words.piglatinize("I")).to eq("Iway")
    expect(words.piglatinize("hello")).to eq("ellohay")
    expect(words.piglatinize("please")).to eq("easeplay")
    expect(words.piglatinize("tomorrow")).to eq("omorrowtay")
    expect(words.piglatinize("until")).to eq("untilway")
    expect(words.piglatinize("this")).to eq("isthay")
    expect(words.piglatinize("Enumeration")).to eq("Enumerationway")
    expect(words.piglatinize("spray")).to eq("ayspray")
    expect(words.piglatinize("prays")).to eq("ayspray")
  end

  it 'has a method splits the sentence to piglatinize each word' do
    expect(words.piglatinize("i love programming")).to eq("iway ovelay ogrammingpray")
  end

end

# describe 'TextAnalyzer Class' do
#   let!(:words) { TextAnalyzer.new("mirror mirror on the wall") }

#   it 'can initialize a new instance of the class' do
#     expect(TextAnalyzer.new("hey yall")).to be_an_instance_of(TextAnalyzer)
#   end

#   it 'can have text' do
#     expect(words.text).to eq("mirror mirror on the wall")
#   end
# end
# end
