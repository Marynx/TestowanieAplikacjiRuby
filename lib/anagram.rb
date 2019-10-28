class Anagram
    def initialize(word)
        @word=word
        @array=[]
    end

    def match(list)
        for i in list
            s=0
            if i.length == @word.length && i.downcase!=@word.downcase
                for j in 0..i.length-1
                    if @word.downcase.chars.sort()[j] == i.downcase.chars.sort()[j]
                        s+=1
                    end
                end
                if s==i.length
                    @array << i
                end
            end
        end
        return @array
    end
end