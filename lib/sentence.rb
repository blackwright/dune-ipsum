class Sentence
  attr_reader :text

  ADJECTIVES = "./words/adjectives.txt"
  ARTICLES = "./words/articles.txt"
  CONJUNCTIONS = "./words/conjunctions.txt"
  NOUNS = "./words/nouns.txt"
  PREPOSITIONS = "./words/prepositions.txt"
  VERBS = "./words/verbs.txt"

  def initialize
    @text = generate_sentence
  end

  private

    def generate_sentence

    end

    def sentence_structure
      
    end
end
