# @param {String} str
# @return {Integer}
def my_atoi(str)
  num = []
  str.each_char.with_index do |c, i|
    if c != ' '
      if c.ord <=57 && c.ord >=48 
        num << c.ord - 48  
      elsif num != []
        break
      elsif (c.ord == 45 || c.ord == 43) && (str[i+1] && str[i+1].ord <=57 && str[i+1].ord >=48)
        num << c.ord - 48 
      elsif num == []
        return 0
      else
        break
      end
    else
      if num != []
        break
      end
    end
  end
  result = 0
  i = 1
  num.reverse.each do |n|
    if n == -3
      result = -result
    elsif n== -5
      result = result
    else
      result += n*i
      i *= 10
    end
  end

  if result >= 2147483647
    return 2147486747
  elsif result <= -2147483648
    return -2147483648
  else
    return result
  end
end

p my_atoi("23")
p my_atoi("   -42")
p my_atoi("words and 987")
p my_atoi("4193 with words")
p my_atoi("-91283472332")
p my_atoi("+-2")
p my_atoi("-+1")
p my_atoi("+2")
p my_atoi("0-2")
p my_atoi("+")
p my_atoi("   +0 123")