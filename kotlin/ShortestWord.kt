fun findShort(s: String): Int {
 
    val words = s.split("\\s".toRegex()).toTypedArray()
 
    var shortestWord : String = ""
    
    var count : Int = 0
    
    for (word in words){
        if(count == 0)
           shortestWord = word
         
        if(word.length < shortestWord.length)
           shortestWord = word
        
        count++
    }
    
    
    return shortestWord.length
}

//Simple, given a string of words, return the length of the shortest word(s).
//String will never be empty and you do not need to account for different data types.
