require_relative '../lib/shakespear'

dictionnary1 = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
dictionnary2 = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
book = File.read("../shakespear.txt")
banned = File.read("../banned.txt").split("\n")

describe "#day_trader" do

  it "outputs the number of the word 'bellow' which is contained in dictionary 1 " do
    s = word_counter("below", dictionnary1)
    expect(s).to eq({"below"=>1, "low"=>1})
  end

  it "outputs the number of each word of the string which is in the dictionary 1" do
    s = word_counter("Howdy partner, sit down! How's it going?", dictionnary1)
    expect(s).to eq({"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1})
  end

  it "outputs the number of all the word in 'book' and which is also in the dictionary 1 " do
    s = word_counter(book, dictionnary2)
    expect(s).to eq({"the"=>21198, "of"=>8890, "and"=>13308, "to"=>11747, "a"=>114629, "in"=>22222, "for"=>5757, "is"=>14570, "on"=>12867, "that"=>4514, "by"=>1797, "this"=>2584, "with"=>3732, "i"=>100637, "you"=>8501, "it"=>11573, "not"=>4159, "or"=>16812, "be"=>8151, "are"=>2649})
  end

  it "outputs the number of all the word in 'book' and which is also in banned" do
    s = word_counter(book, banned)
    expect(s).to eq({"anal"=>2, "anus"=>217, "arse"=>17, "ass"=>536, "balls"=>11, "bastard"=>55, "bloody"=>93, "bum"=>1, "butt"=>30, "cock"=>31, "crap"=>2, "damn"=>74, "dick"=>31, "fag"=>1, "hell"=>72, "homo"=>1, "jerk"=>5, "muff"=>9, "nigga"=>7, "omg"=>1, "piss"=>1, "poop"=>2, "prick"=>29, "sex"=>15, "s hit"=>6, "slut"=>6, "tit"=>190, "turd"=>2, "whore"=>34})
  end

end