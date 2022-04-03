fun countPositivesSumNegatives(input : Array<Int>?) : Array<Int> {
    
    var positiveCounter : Int = 0
    var negativeSum : Int = 0 
    var result : Array<Int> = emptyArray()
       
    if (!(input.isNullOrEmpty()))
        for (number: Int in input) {
            if(number > 0){
               positiveCounter++
            } else if(number < 0){
                negativeSum += number
            }
        result = arrayOf(positiveCounter, negativeSum)
       } 

    return result
}

//Given an array of integers.
//Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers. 0 is neither positive nor negative.
//If the input is an empty array or is null, return an empty array.