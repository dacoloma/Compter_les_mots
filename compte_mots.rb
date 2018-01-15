def jean_michel_data(corpus,dictionnaire)
    corpus_array=[]
    corpus.downcase!
=begin
    corpus_array = corpus.split(/[,?;.:!' ]/)
    corpus_array.delete("")
    corpus_array.each do |word|
        puts "#{word} => #{dictionnaire.count(word)}"
    end
=end
    #puts dictionnaire.count(corpus)
    dictionnaire.each do |word|
        puts "#{word} : #{corpus.scan(word).count}" if corpus.scan(word).count > 0
    end
end




dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
#jean_michel_data("below", dictionary)
jean_michel_data("Howdy partner, sit down! How's it going?", dictionary)
