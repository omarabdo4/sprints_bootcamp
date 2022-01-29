#1

myArray=[1,2,3,4,5,6,7,8,9,10]
for x in myArray do
    p x
end

#2.

for x in myArray do
    if(j==5||j==6)
        next
    else
        p x
    end
end

#3.

for x in myArray do
    if(j<6)
        p x
    end
end

#4.

for x in myArray do
    if(j%2==0)
        p x
    end
end

#5.

for x in myArray do
    if(j%2!=0)
        p x
    end
end

#6.

for x in 2..9 do
    p x   
end

#7.
for x in myArray do
    if(j%2!=0)
        p x.to_s + ' Odd'
    else
        p x.to_s+' even'
    end
end

