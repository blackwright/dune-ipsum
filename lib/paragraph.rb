require_relative "sentence"

class Paragraph
  attr_reader :text

  def initialize(num_paragraphs = 1)
    @text = generate_text(num_paragraphs)
  end

  private

    def generate_text(num_paragraphs)
      result = ""
      num_paragraphs.times { result += p_tag(generate_paragraph) }
      result
    end

    def p_tag(string)
      "<p>#{string}</p>"
    end

    def generate_paragraph
      paragraph = ""
      4.times { paragraph << Sentence.new.text }
      paragraph
    end
end
