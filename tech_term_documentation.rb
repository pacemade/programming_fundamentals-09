# Strings

length ------------

tells you how many characters there are in the string

Arguments: strings, arrays, hash

Return type: Integer

Example

"danny".length #returns 5


strip --------------

Removes whitespace before and after the string (leading and trailing)

Arguments: needs to be a string

Return type: string

Example

"     danny     ".strip #will give "danny"


split --------------

Separates string into an array, separates by the letter with element ("").
If a letter is used, that letter is removed, and the string is split into array,
letters before and after the letter are grouped. If two letters appear in a row,
a "" is added in the array.

Arguments: needs to be a string, (//) splits each character into the array, (//, 2)
will split the word into 2 variables in an array, starting from the first letter.

Return type: array

"dannychang".split(//, 5) # Gives ["d", "a", "n", "n", "ychang"]


start_with? ------------------

Checks to see if a string has the prefix indicated in the element. Within a list,
will be "true" if even just 1 prefix matches the word entirely

Arguments: Strings, as many as you want

Return type: boolean

Example

"hello".start_with?("heaven", "boloman", "healven", "helena", "hellena") # will give false

"hello".start_with?("heaven", "boloman", "healven", "helena", "hellena", "hell") # will give true





# arrays

first -----------------------------------

Gives the first variable in the array

Arguments: Adding (2) will give the first 2 elements in the array

Return type: string, integer, array

danny = "danny".split(//)

"danny".first(3) #gives ["d", "a", "n"]


delete_at --------------------------------

Removes the element at the specified position

Arguments: If specified position doesnt exist, returns nil

Return type: the element that was selected

Example

danny = "danny".split(//)

danny.delete_at(3) #returns "n"

danny #returns ["d", "a", "n", "y"]


delete -------------------------------------

Removes all instances of indicated element from the arrays

Arguments: if element does not exist, will return nil

Return type: element that was selected

Example

danny = "danny".split(//)

danny.delete("a") # gives "a"

danny #gives ["d", "n", "n", "y"]


pop ---------------------------------------------------

Removes the last element in an array

Arguments: Adding (x) will pop off x amount of elements from the end

Return type: if just 1, it is a string/integer, if multiple, it becomes array

Example

danny = "danny".split(//)

danny.pop(2) # ["n", "y"]

danny # gives ["d", "a", "n"]


# HASHES

to_a -----------------------------------

Breaks the key:value elements into an array, each element is nested as a pair

Arguments (name, data type, optional/required, default value if any)

Return type: array


quick_define = {
  shorty: "girl",
  babayaga: "boogie man",
  net_neutrality: "please"
}

quick_define.to_a

# gives [[:shorty, "girl"], [:babayaga, "boogie man"], [:net_neutrality, "please"]]


has_key? --------------------------------------------------------

Looks into the KEYS within the hash to find the element

Arguments: either true or false

Return type: boolean


quick_define = {
  shorty: "girl",
  babayaga: "boogie man",
  net_neutrality: "please"
}

quick_define = { :shorty => "girl", :babayaga => "boogie man", :net_neutrality => "please" }

quick_define.has_key?(:babayaga) # gives TRUE


has_value? --------------------------------------------------------

Looks into the VALUE within the hash to find the element

Arguments: either true or false

Return type: boolean


quick_define = {
  shorty: "girl",
  babayaga: "boogie man",
  net_neutrality: "please"
}

quick_define = { :shorty => "girl", :babayaga => "boogie man", :net_neutrality => "please" }

quick_define.has_value?("girl") # gives TRUE


# TIME

now  ------------------------------------------------------------

Gives the date and time (and timezone)

Return type: time

Time.now # Gives 2017-12-14 17:22:31 -0500


# File

exist? ----------------------------------------------------------

Tells you whether or not a file exists within the directory that it is in

Arguments: dont use exists?

Return type: boolean

file = File.exist?("README.md")
p file #gives true


extname ---------------------------------------------

Returns the extension for the file selected (everything after the first period in a )

Arguments: If there is nothing after the period, will return " "

Return type: string

file = File.extname("README.md")
p file #gives ".md"
