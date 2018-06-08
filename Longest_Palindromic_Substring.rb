# @param {String} s
# @return {String}
def longest_palindrome(s)
  buf = []
  s_size = s.size
  left = 0
  right = s_size - 1

  max_size = 0

  s = s.gsub(/(.{1})/, '\1.') 
  s_size += (s_size - 1)


  for i in 0..(s_size - 1)
    j = 1
    buf[i] = 0
    while (i - j) >= 0 && (i + j) < s_size
      if s[i-j] == s[i+j]
        buf[i] += 1
        j += 1
      else
        break
      end
    end
    if s[i+buf[i]] == '.'
      buf[i] -= 1
    end

    if buf[i] > max_size
      max_size =buf[i]

    else
      buf[i] = 0
    end
  end
  p buf
  max = buf.each_with_index.max
  s = s[max[1]-max[0]..max[1]+max[0]]
  p s.tr('.','')

  
end

s1 = "babad"
s2 = "123321"
s3 = "abb"
longest_palindrome(s1)
longest_palindrome(s2)
longest_palindrome(s3)