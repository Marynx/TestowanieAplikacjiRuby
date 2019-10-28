class Raindrops
    def self.convert(number)
        word=""
        x=(1..number).select { |n|number % n == 0}
        for i in x
            if i==3
                word=word+"Pling"
            end
            if i==5
                word=word+"Plang"
            end
            if i==7
                word=word+"Plong"
            end
        end
        if word.length==0
            return String(number)
        end
        return word
    end
end