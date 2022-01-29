#1.
myArray=[1,2,3,4,5]
p myArray.min
p myArray.max
p myArray.count
p myArray.reduce { |prod, n| prod * n }
#2.
value=3
p myArray.any?(value)
#3.
repeated_Arr=[1,1,2,2,3,3,3]
p repeated_Arr.uniq.map {|element| [element,repeated_Arr.count(element)]}
#4.
p myArray.reduce { |sum, n| sum + n }
#5.
p repeated_Arr.uniq
#6.
new_arr=Array.new(2)
evenArr=[2,4,6,8]
len=evenArr.size
new_arr=[evenArr[(len/2)-1],evenArr[(len/2)]]
p new_arr
#7.
odd_length_arr=[5,9,2,3,0]
p odd_length_arr.max
#8.
def sumArr(myArray)
    arrSize=myArray.size
    if(arrSize==0)
        return 0
    end
    sum =myArray[0]
    
    for i in 1..(arrSize-1) do
     
        if(myArray[i]==17||myArray[i-1]==17)
            next
        else
            sum=sum+myArray[i]
        end
    end
    return sum
end

p sumArr(myArray)
#9.

def identicalCheck(arr)
    uniqueArrLength=arr.uniq.size
    if(uniqueArrLength==1)
        return true
    end
    return false
end
idArr=[3,3,3,3,3,3]

p identicalCheck(idArr)

#10.
arr1 ='ABC'.each_char.to_a
arr2='DEF'.each_char.to_a

