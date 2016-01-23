def translate(words)
  result = ""
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels

  words.split.each do |word|
    first_letter = word[0]
    second_letter = word[1]
    third_letter = word[2]

    if vowels.include?(first_letter)
      result += word + 'ay' + " "
    elsif first_letter == "q" && second_letter == "u"
      result += word[2..-1] + word[0..1] + 'ay' + " "
    elsif consonants.include?(first_letter) && second_letter == "q" && third_letter == "u"
      result += word[3..-1] + word[0..2] + 'ay' + " "
    elsif consonants.include?(first_letter) && consonants.include?(second_letter) && consonants.include?(third_letter)
      result += word[3..-1] + word[0..2] + 'ay' + " "
    elsif consonants.include?(first_letter) && consonants.include?(second_letter)
      result += word[2..-1] + word[0..1] + 'ay' + " "
    elsif consonants.include?(first_letter)
      result += word[1..-1] + first_letter + 'ay' " "
    else
      word
    end
  end

  result.strip
end
