#Gigasecond Calculation

module BookKeeping
     VERSION = 3 
end

class Gigasecond
     def self.from(date)
         date + (10**9)
     end
end
