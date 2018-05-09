def solution(s)
  split_newline = s.split("\n")
  call_hash = {}
  split_newline.each do |call|
    call = call.split(",")
    call_time = (call[0][0..1].to_i) *3600 + (call[0][3..4].to_i) * 60 + (call[0][6..7].to_i)

    if  call_hash[call[1]]
      call_hash[call[1]] += call_time
    else
      call_hash[call[1]] = call_time
    end
    puts call_hash
    
  end
  max = 0
  total = 0
  call_hash.each do |key, value|
    if value <= 300
      total = value*3
    else
      total = (value)/60 *150
      if value%300
        total+= 150
      end
    end
    max = total > max ? total:max
  end
  puts max
end

s = "00:01:31,123–456–789\n00:05:03,223–456–789\n00:03:20,123–456–789\n00:03:10,123–456–789\n"
solution(s)