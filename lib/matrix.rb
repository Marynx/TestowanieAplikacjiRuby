class Matrix
    def initialize(tab)
        @tab=tab.split("\n")
        count=0
        rowSize=@tab[0].split(" ").size
        @rows=Array.new(@tab.size){Array.new(rowSize)}
        @columns=Array.new(rowSize){Array.new(@tab.size)}
        for x in @tab
            count1=0
            for y in x.split(" ")
                @rows[count][count1]=Integer(y)
                @columns[count1][count]=Integer(y)
                count1+=1
            end
            count+=1
        end
    end

    def rows
        return @rows
    end
    def columns
        return @columns
    end
end