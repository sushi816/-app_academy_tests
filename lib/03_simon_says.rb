def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, freq = 2)
  result = ""
  freq.times do
    result += word + " "
  end
  result.strip
end

def start_of_word(word, freq)
  word.split.join[0..freq-1]
end

def first_word(words)
  words.split.first
end

def titleize(name)
  lowercase_words = %w{the and over}
  title = name.split.each_with_index.map do |word, index|
    if lowercase_words.include?(word) && index > 0
      word
    else
      word.capitalize
    end
  end
  title.join(" ")
end