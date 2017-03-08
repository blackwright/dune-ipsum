class Word

  def self.adjective
    adjectives_path = "./lib/words/adjectives.txt"
    random_word(adjectives_path)
  end

  def self.article
    articles_path = "./lib/words/articles.txt"
    random_word(articles_path)
  end

  def self.conjunction
    conjunctions_path = "./lib/words/conjunctions.txt"
    random_word(conjunctions_path)
  end

  def self.noun
    nouns_path = "./lib/words/nouns.txt"
    random_word(nouns_path)
  end

  def self.preposition
    prepositions_path = "./lib/words/prepositions.txt"
    random_word(prepositions_path)
  end

  def self.verb
    verbs_path = "./lib/words/verbs.txt"
    random_word(verbs_path)
  end

  private

    def self.random_word(file_path)
      word = nil
      File.foreach(file_path).each_with_index do |line, number|
        word = line if rand < 1.0 / (number + 1)
      end
      word.strip
    end
end
