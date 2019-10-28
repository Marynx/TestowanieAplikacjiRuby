class Series
    def initialize(series)
        @series=series
    end

    def slices(x)
       raise ArgumentError if x > @series.size
       @series.chars.each_cons(x).map(&:join)
    end
end