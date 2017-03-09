class Quote
  attr_reader :text

  def initialize
    @text = generate_quote
  end

  private

    def quotes_path
      "./lib/words/quotes.txt"
    end

    def generate_quote
      quote = nil
      File.foreach(quotes_path).each_with_index do |line, number|
        quote = line if rand < 1.0 / (number + 1)
      end
      quote.strip
    end
end
