class Acronym
    def self.abbreviate(line)
        return line.scan(/\b\w/).join.upcase
    end
end