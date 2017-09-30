# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    nums_size = nums.size

    numa =1
    maxnum =0
    if nums_size ==1
        return nums[0]
    end
    puts nums_size
    while(nums[0] !=nil)
        i=0
        for j in 0..nums_size-1
            if nums[j] ==nums[0]
                i+=1
            end
        end
        puts i/nums_size.to_f
        if i/nums_size.to_f >0.5
            puts nums[0]
            return nums[0]
        end
        nums.delete(nums[0])
        nums_size -=i
    end
end