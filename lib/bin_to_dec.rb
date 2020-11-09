class BinToDec
    def self.checkIfExistNoBinaryNumber(arrayOfDigits)
        arraySize = arrayOfDigits.size
        for i in (0...arraySize)
            if arrayOfDigits[i] < 0 || arrayOfDigits[i] > 1
                return true
            end
        end
        return false
    end

    def self.conversor(binaryNumber)
        arrayOfDigits = binaryNumber.chomp.split("").map!{ |value| value.to_i }
        if checkIfExistNoBinaryNumber(arrayOfDigits)
            return "You may not type a non binary digit! :/"
        else
            size = arrayOfDigits.size
            idx = size - 1
            decimalValue = 0
            for i in (0...size)
                decimalValue += (arrayOfDigits[i])*(2**idx)
                idx -= 1
            end
            return decimalValue
        end
    end
end
