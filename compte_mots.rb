def jean_michel_data(corpus,dictionnaire)
    #corpus_array=[]
    corpus.downcase!

    corpus_array = corpus.split(/[,?;.:!' ]/)
    corpus_array.delete("")
    corpus = corpus_array.join(" ")
    dictionnaire.each do |word|
        compte = corpus.scan(word).count
        if compte > 0
            puts "#{word} : #{compte}"
        end
    end
end




dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
#jean_michel_data("below", dictionary)
jean_michel_data("Howdy partner, sit down! How's it going?", dictionary)

#{"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
