class ROMANNUMERAL
                    
    ROMAN_NUMERALS = {
                       1000 => "M",
        	            500 => "D",
        	            100 => "C",
        	             50 => "L",                
                         10 => "X", 
                         9 => "IX",
                         8 => "VIII", 
                         7 => "VI",  
                         6 => "VI", 
                         5 => "V", 
                         4 => "IV",
                         3 => "III",
                         2 => "II", 
                         1 => "I" 
                    }                  
                        
    
    def self.convert(number)
        result = ""
        
        ROMAN_NUMERALS.each do |input, numeral|
            while number >= input
                result += numeral
                number -= input
            end
        end

         result
    end

end

describe ROMANNUMERAL do

     it "returns 'I' when given the number 1" do
        expect(ROMANNUMERAL.convert(1)).to eq("I")
     end

     it "returns 'II' when given the number 2" do
        expect(ROMANNUMERAL.convert(2)).to eq("II")
     end

     it "returns 'III' when given the number 3" do
        expect(ROMANNUMERAL.convert(3)).to eq("III")
     end

     it "returns 'IV' when given the number 4" do
        expect(ROMANNUMERAL.convert(4)).to eq("IV")
     end

     it "returns 'V' when given the number 5" do
        expect(ROMANNUMERAL.convert(5)).to eq("V")
     end

     it "returns 'VI' when given the number 6" do
        expect(ROMANNUMERAL.convert(6)).to eq("VI")
     end

     it "returns 'X' when given the number 10" do
        expect(ROMANNUMERAL.convert(10)).to eq("X")
     end

     it "returns 'XIV' when given the number 14" do
        expect(ROMANNUMERAL.convert(14)).to eq("XIV")
     end

     it "returns 'XVI' when given the number 16" do
        expect(ROMANNUMERAL.convert(16)).to eq("XVI")
     end

     it "returns 'XXIX' when given the number 29" do
        expect(ROMANNUMERAL.convert(29)).to eq("XXIX")
     end

     it "returns 'LXXIX' when given the number 79" do
        expect(ROMANNUMERAL.convert(79)).to eq("LXXIX")
     end

     it "returns 'MI' when given the number 1001" do
        expect(ROMANNUMERAL.convert(1001)).to eq("MI")
     end

     it "returns 'MIX' when given the number 1009" do
        expect(ROMANNUMERAL.convert(1009)).to eq("MIX")
     end

     xit "returns 'MXLIX' when given the number 1049" do
        expect(ROMANNUMERAL.convert(1049)).to eq("MXLIX")
     end

     xit "returns 'MXC' when given the number 1090" do
        expect(ROMANNUMERAL.convert(1090)).to eq("MXC")
     end

     xit "returns 'MCMXLV' when given the number 1945" do
        expect(ROMANNUMERAL.convert(1945)).to eq("MCMXLV")
     end

end