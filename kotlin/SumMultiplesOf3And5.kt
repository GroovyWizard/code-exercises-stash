fun multipleOfFive(number: Int) : Boolean{
    if (number%10 in listOf(0, 5)){
        return true
    } else {
        return false
    }
}

fun multipleOfThree(number: Int) : Boolean {
    var numberParsed = number.toString()
    var digitsSum : Int = 0
    
    //sum each digit
    for(digit in numberParsed){
       digitsSum += digit.toInt()
    }
    
    //check if the sum of digits is divisible by 3
    if ((digitsSum%3) == 0){
        return true
    } else {
        return false
    }
}

fun checkMultiple(number: Int) : Boolean{
    if(multipleOfThree(number) || multipleOfFive(number)){
        return true
    } else {
        return false
    }
} 

fun solution(number: Int): Int {
    var result : Int = 0 
    var input : Int = number-1
    
    if (input > 0) {
        while (input >= 0) {
            if (checkMultiple(input)){
                result += input
            }
            input--
        }
    }
    
    return result
}

//If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
//Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).
//Note: If the number is a multiple of both 3 and 5, only count it once.
//https://projecteuler.net/problem=1
//https://www.codewars.com/kata/514b92a657cdc65150000006