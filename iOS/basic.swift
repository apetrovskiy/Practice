import UIKit

// variable 
var a = "Bhupend";
var b = 1;

var firstName : String = "Bhupend";


// constant
let lastName : String = "Patil";



//boolean
var isTrue : Bool = true
var isFalse : Bool = false;

let constantBool : Bool = false;

isTrue = false;

var trueStatement : Bool = (5==5)

var falseStatement : Bool = (4==7)


//integers
var one = 1

var two : Int = 2

Int32(two)

two = 2

let tenn : Int = 10


var aa : Int = 5
var bb : Int = -15

aa + bb
aa - bb
aa * bb
bb / aa

Double(a)

var dd : Int = 0
let movement1 : Int = 6
let movement2 : Int = -8

dd = dd + movement1

dd

dd = dd + movement2


// float and double

var float1 : Float = 5.5
var float2 : Float = 5.55555555


var double1 : Double = 6.6
var double2 : Double = 6.6666666666666


var bank_balance : Float = 0;
let deposit : Float = 500.50
let withdrawal : Float = -223.98

var a = Float(bank_balance) + deposit + withdrawal


// characters and strings

var a : Character = "a"
var b : Character = "1"
var c : Character = "$"
var d : Character = "😂"

var string1 : String = "mammoth"
var string2 : String = " interactive"
var string3 : String = "" 

var string_to_int = Int("2")

var int_to_string = String(2)

print(int_to_string)



// optional variables (nil)

var someVariable : Int?

var newName : Int? = 56


// if statements

var question1 : Bool = true
let answer1 : Bool = true
var question2 : Bool = false
let answer2 : Bool = true
var score : Int = 0

if question1 == answer1 {
    score += 1
}

if question2 == answer2 {
    score += 1
}

print(score)


// if statements (nested, multi)

var isLoggedIn : Bool = false
var username : String = "bhupendpatil"
var password : String = "password"

if (username == "bhupend" && password == "password") {
    isLoggedIn = true
}

print(isLoggedIn)

isLoggedIn = false

if username == "bhupendpatil" {
    if password == "password" {
        isLoggedIn = true
    }
}

print(isLoggedIn)

// else if

var bank_balance : Double = 200.00
let purchase : Double = 49.99
var message : String?

if purchase > bank_balance {
    message = "Not enouth money!"
} else if purchase < bank_balance {
    message = "Plenty of money, spend away!"
}

print(message)


// eg. apples, bananas, oranges, pears, peaches

let fruitILike : String = "orange"
var fruitPicked : String = "apple"
var message : String?

if fruitILike == fruitPicked {
    message = "Yumm!"
} else {
    message = "Yuck!"
}

print(message)


// Arrays

var array_name : [Int] = [1,2,3,4,5]


// boolean Arrays

var bool_array = [Bool]()
bool_array = [true,false,false]

var bool_array2 : [Bool] = [true,true,false]

var bool_arra2 = [true,(6==6),false]

var answer_key : [Bool] = [true,true,false,true,false]

var my_test : [Bool] = [true,true,true,false,false]


// types of Arrays


var int_array = [Int]()

var int_array : [Int] = [1,2,3,4,5]

var position_array : [Int] = [0,4,-2,10,5,8,0]

var int1 : Int = 5

var position_array1 : [Int] = [int1,4,-2,10,5,8,0]

var list_of_transactions : [Double] = [500.00, -345.90, -27.50,678]

var listOfFloats : [Float] = [5.5,6.6,7.7]

var char_array = [Character]()

char_array = ["a","b","c","🤗"]

var string1 : String = "Hello"

var race_positions : [String] = ["Bhupend", "Patil", string1,"Har","Pradeep"]

// array elements

var int_array : [Int] = [1,2,3,4]

var first_elem : Int = int_array[0]

first_elem = 5

print(first_elem)

int_array[0] = 10

print(int_array[0])

var string_array : [String] = ["lol", " awdnawd"]

string_array[1] = "Hello"

print(string_array)


// adding elements to array

var bool_array = Array(repeating : true, count : 10)

print(bool_array)

var int_array : [Int] = [1,2]
int_array.append(3)
int_array.append(2)
int_array.append(5)

int_array += [3,2,4]

print(int_array)


// insert and remove functions

var greetings_array : [String] = ["Hi", "Hello", "Hey"]

greetings_array.insert("Howdy", at:0)
print(greetings_array)

greetings_array.remove(at:1)
greetings_array.remove(at:2)

print(greetings_array)

