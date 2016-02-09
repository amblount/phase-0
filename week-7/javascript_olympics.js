 // JavaScript Olympics

// I paired [with: Kevin Serrano] on this challenge.

// This challenge took me [#] hours.


// Warm Up

var journal = [
  {name: "Sarah",
   event: "Swimming"},
  {name: "Bob",
   event: "Golf"},
];
// use iterator to go through each item in array

// iterator:
//    element.win = name + "won the" + event
// modify the array

// Bulk Up
function win(array) {

  var len = array.length;
  for (var i = 0; i < len; i++) {
    var name = array[i].name
    var event = array[i].event
    array[i].win = name + " wins " + event
    console.log(array[i].win)
  };
};

console.log(journal[0].win)
console.log(journal[1].win)
win(journal)
console.log(journal[0].win)
console.log(journal[1].win)

// var myStringArray = ["Hello","World"];
// var arrayLength = myStringArray.length;
// for (var i = 0; i < arrayLength; i++) {
//     alert(myStringArray[i]);
//     //Do something

// Jumble your words

function reverse_a_string(string) {
  return string.split("").reverse().join("")
};

var teststr = "Hello World! This is cool!"
console.log(reverse_a_string(teststr))


// 2,4,6,8

function isEven(array) {
  function num(input) {
    return input % 2 == 0;
  };
  return array.filter(num);
};

// function new_filter(array,func) {
//    var newarr = []
//   for (var i = 0; i < array.length; i++) {
//     if (func(array[i]))
//       newarr.push(array[i]);
//   }
//   return newarr;
// }

// function num(input) {
//   return input % 2 == 0;
// }

var numbers = [1,2,3,4,5,6,7,8,9,10]
console.log(isEven(numbers))
// console.log(new_filter(numbers,num))

// "We built this city"

function Athlete(name,age,sport,quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
I understand how to write functions and define variblae sin javascript.

What are constructor functions?
Constructor functions are versions of instances and instance methods in ruby.

How are constructors different from Ruby classes (in your research)?
contrsutors use this. instead of @

*/