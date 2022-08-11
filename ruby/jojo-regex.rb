# Now, the drill in this kata is rather easy:
#either create a regex expression or a function to find
#if a given name is a proper JoJo or not in boolean terms (true/True if it is valid,
#false/False otherwise).
# To recap, you have a valid JoJo if:
#     both your firstname and your surname start with "Jo-"
#     your firstname starts with "Jo-" and your surname ends with "-Jo"
#     both your firstname and your surname start with "Gio-"
#     don't expect the to have a string formed by only two words joined by a space: strings may be of 1 word, 2 words, 3 words or more
#     you will be helped: lower-/upper-case will not matter here
#     you still may consider the first word as the firstname and the last word as the surname
# Some examples to clarify even better:
# "Joseph Joestar" => valid JoJo name
# "Dio Brando" => invalid JoJo name
# "George Joestar II" => invalid JoJo name (still cool, though)
# "Giorno Giovanna" => valid JoJo name
# "Josuke Joestar" => valid JoJo name (not his actual surname, but ok)
# "Kars" => invalid JoJo name
# "Caesar Zeppeli" => invalid JoJo name

$regex = /(^(Jo).*(Jo))|(^(Gio).*(Gio))|(^(Jo).*(jo))/
def is_jojo(name)
    return name.match($regex) ? true : false
end

#found some better options like $regex = /\A(Jo|Gio)\w* (?:\1\w*|\w*\1)\z/
