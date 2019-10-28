class Hamming
    def self.compute(string1,string2)
        count=0
        if string1.length != string2.length
            raise ArgumentError
        end
        for x in 0..string1.length
            if string1[x] != string2[x] then
                count +=1
            end
        end
        return count
    end
end