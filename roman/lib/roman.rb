class Roman
  def convert_to_arabic(roman)
    roman_to_arabic = { "i" => 1, "v" => 5, "x" => 10, "l" => 50, "c" => 100 , "d" => 500, "m" => 1000}

    special = %W{iv ix xl xc cm}

    num = 0

    roman = roman.gsub(Regexp.union(special)) do |x|
      a, b = x.chars
      num += roman_to_arabic[b] - roman_to_arabic[a]
    end

    roman.chars.reduce(num) do |inc, r|
      roman_to_arabic.fetch(r, 0) + inc
    end
  end
end
