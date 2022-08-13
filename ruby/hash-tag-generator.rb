#The marketing team is spending way too much time typing in hashtags.
# Let's help them with our own Hashtag Generator!
# Here's the deal:

#     It must start with a hashtag (#).
#     All words must have their first letter capitalized.
#     If the final result is longer than 140 chars it must return false.
#     If the input or the result is an empty string it must return false.

# Examples
# " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
# "    Hello     World   "                  =>  "#HelloWorld"
# ""                                        =>  false


def split_string_by_spaces(string)
   return string.split
end

def hash_tag_builder(string)
   final_hash_tag = "#"

   word_collection = split_string_by_spaces(string)

   word_collection.each do |word|
     #quick tip, in ruby << uses less memory since it modifies the string object,
     #+ will create copies,
     #and since the strings can get really big here im preventing problems
     final_hash_tag << word.capitalize
   end

   return final_hash_tag
end


def generateHashtag(str) #the method name needs to be on PascalCase for it to work on Kata...
  trimmed_string =  str.gsub(/\s+/, "")
  #this removes whitespaces, but joins the words, since we do not consider
  #spaces as string length here.

  return (trimmed_string.length() < 140 and trimmed_string.length() >= 1 and !(trimmed_string.strip.empty?)) ? hash_tag_builder(str) : false
end
