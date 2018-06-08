# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  num1_size = nums1.size
  num2_size = nums2.size
  
  if num1_size%2
    med_num1[0] = nums1[num1_size/2-1]
    med_num1[1] = nums1[num1_size/2]
    
  else
    med_num1[0] = nums1[num1_size/2]
  end

  if num2_size%2
    med_num2[0] = nums2[num2_size/2-1]
    med_num2[1] = nums2[num2_size/2]
  else
    med_num2[0] = nums1[num2_size/2]
  end

  if (num1_size+num2_size)%2
    if med_num1 == med_num2
  else

  end
end

def median(nums)
  nums_size = nums.size
  if nums.size%2
    nums[0] = (nums[nums_size/2-1] + nums[nums_size/2])/2
  else
    nums[0] = nums[nums_size/2]
  end
end