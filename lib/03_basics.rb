def who_is_bigger(a,b,c)

    if  a == nil || b == nil || c == nil
        return "nil detected"

    else
            
        if  a > b && a > c
            return "a is bigger"

        elsif b > a && b > c 
            return "b is bigger"

        else c > b && c > a 
            return "c is bigger"
        end
    end

end

    def reverse_upcase_noLTA(string)
        return string.reverse.upcase.delete('L').delete('T').delete('A')
    end

    def array_42(array)
        
        return array.include?(42)   
    end

    def magic_array(array)
        return array.flatten.sort.map!{|n| n*2}.delete_if {|n| n%3 == 0}.uniq.sort
    end
