require_relative "sentence"

class Paragraph
  attr_reader :text

  def initialize(num_paragraphs)
    @text = generate_text(num_paragraphs)
  end

  private

    def generate_text(num_paragraphs)
      result = ""
        num_paragraphs.times do
          result += p_tag(generate_paragraph)
        end
      result
    end

    def p_tag(string)
      "<p>#{string}</p>"
    end

    def generate_paragraph
      paragraph = ""

      paragraph
    end
end
