def checkIfExistNoBinaryNumber(arrayOfDigits)
    arraySize = arrayOfDigits.size
    for i in (0...arraySize)
        if arrayOfDigits[i] < 0 || arrayOfDigits[i] > 1
            return true
        end
    end
    return false
end

def bin2decConversor(binaryNumber)
    arrayOfDigits = binaryNumber.chomp.split("").map!{ |value| value.to_i }
    if checkIfExistNoBinaryNumber(arrayOfDigits)
        return "You may not type a non binary digit! :/"
    else
        size = arrayOfDigits.size
        decimalValue = 0
        for i in (0...size)
            decimalValue += (arrayOfDigits[i])*(2**i)
        end
        return decimalValue
    end
end

begin
    print "Type a binary number to convert => "
    value = gets
    puts "Result => #{bin2decConversor(value)}"
rescue StandardError => msg
    "An error occurred! #{msg}"
end



