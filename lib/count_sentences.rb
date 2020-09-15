require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences_ar = self.split
    sentence_count = 0
    sentences_ar.each do |element|
      if element == "." || element == "?" || element == "!"
        sentence_count += 1
      end
    end
    sentence_count
  end
end