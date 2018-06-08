# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
    buf = Array.new(num_rows) { Array.new(string_length(s,num_rows)) }
    i = 0
    j = 0
    k = 0
    if num_rows == 1
      return s
    end
    s.each_char do |c|
      if k == 0
        buf[i][j] = c
        i += 1
        if i >= num_rows  
          k = i - 2
          i = 0
          j += 1
        end
      else
        buf[k][j] = c
        k -= 1
        j += 1
      end
      
    end
    result = ""
    for i in 0..num_rows -1
      buf[i].compact.each do |c|
        result += c
      end
    end
    result
end

def string_length(s, num_rows)
  size = s.size
  length = size / (num_rows * 2 -1)
  r = size % (num_rows * 2 - 1)
  if  r < num_rows
    length += 1
  elsif 
    length += (r - num_rows + 1)
  end
  return length
end

s = "PAYPALISHIRING"
numRows = 3

p convert(s,numRows)
