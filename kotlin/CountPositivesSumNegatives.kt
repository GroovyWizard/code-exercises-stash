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