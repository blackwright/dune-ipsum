require_relative "word"

class Sentence

  attr_reader :text

  STRUCTURES = [ "nvcn",
                 "nvran",
                 "nvrancnvan",
                 "rnvpn",
                 "rnvran,cncn",
                 "pranvrancrancvn",
                 "crnvnprn",
                 "rnpnvrn,prnvn",
                 "pncn,pncrn",
                 "rnvcnv",
                 "rnv,rnv",
                 "nvpranprnva",
                 "rnvpn,pncnva",
                 "nvrn,cnvrnv",
                 "nvapn",
                 "pnnvpn,cv",
                 "rnv, rnvran",
                 "nvran,nvan",
                 "cnvrn,pnnv",
                 "nvrnvran",
                 "npn,npan,npanv",
                 "anvpncnv",
                 "anvpn",
                 "cncnpran" ]

  def initialize
    @text = generate_sentence
  end

  private

    def generate_sentence
      structure = STRUCTURES.sample.split(//)
      sentence = []
      structure.each do |part_of_speech|
        word = nil
        case part_of_speech
        when "n"
          word = Word.noun
        when "r"
          word = Word.article
        when "v"
          word = Word.verb
        when "p"
          word = Word.preposition
        when "c"
          word = Word.conjunction
        when "a"
          word = Word.adjective
        when ","
          word = ","
        end
        sentence << word
      end
      sentence[0].capitalize!
      sentence.join(" ").gsub(" , ", ", ") + ". "
    end
end
