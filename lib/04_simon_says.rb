    def echo(salutation)
        return salutation
    end

    def shout(salutation)
        return salutation.upcase
    end

    def repeat(salutation, x=2)
        return ((+salutation+" ")*x).rstrip
    end

    def start_of_word(salutation, n)
       return salutation[0, n] #si [2, n] ça afficherait "hel"
    end

    def first_word (salutation)
        return salutation.split.first # first désigne mon 1er mot, si j'avais mis .second j'aurais désigné mon deuxième mot etc...
    end

    def titleize (salutation)
        return salutation.capitalize
    end


