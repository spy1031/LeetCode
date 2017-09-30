# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    
    i=0;
    count=0;
    buf =0;
    while nums[i]!=nil
        if count ==0
           buf = nums[i]
            count+=1;
        else
            if buf == nums[i]
               count+=1; 
            else
                count-=1;
            end
        end
        i+=1;
    end
    return buf;
end