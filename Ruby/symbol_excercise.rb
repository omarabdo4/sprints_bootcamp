#1.

def strStartCheck(str)
    
    if(str.start_with?("wel")||str.start_with?("to")||str.start_with?("zzz"))
        return true
    end

    return false
end

p strStartCheck(:google)
p strStartCheck(:too)

#2.

def strEndCheck(str)
    
    if(str.end_with?("by") ||str.end_with?("zy") )
        return true
    end
    return false
end

p strEndCheck(:google)
p strEndCheck(:oozy)

#3

def symGetLength(sym)
    p sym
    return sym.to_s.gsub(/[!@%&"]/,'').length
end

p symGetLength("by@a".intern)

#4

x = :google
x = x.to_s.upcase.intern
p x
p x.to_s.downcase.intern

#5

x = x.to_s
x = x.intern

#6

resArr=:welcome_to_ruby.to_s.split("").map{|x| x.intern }
p resArr