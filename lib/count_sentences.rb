require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    final = self.split("!").reject(&:empty?)
    final = final.map {|item| item.split(".")}.flatten
    final.map {|item| item.split("?")}.flatten.count
  end
end
