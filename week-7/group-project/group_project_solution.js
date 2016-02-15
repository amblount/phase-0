//user stories
https://developer.mozilla.org/en-US/docs/Web/API/console/assert
//assert test
As a user I would like to know if the given inputs are allowed for use in this function. If not print out an error statement.

// tests for sum
As a user, I want to make sure that sum is a function with numeric input and output. I want to determine the length of the input and classify it as an even or odd number.

// tests for mean
Mean is an equation for adding up all numbers in the array and dividing that sun by the number of numbers. The mean equations should be applied to both the even and odd arrays.

// tests for median
As a user I would like to find the median value of the even and odd data sets. The median is also the number that is halfway into the set. To find the median, the data should first be arranged in order from least to greatest. To remember the definition of a median, just think of the median of a road, which is the middlemost part of the road.

// PERSON 2:

// (Pseudocode based on only reading Person 1's User stories)


//assert test
        // Create an assert function that accepts an array of integers as an agrument. If the input is an integer return true, if its not throw an error message.


// tests for sum
        // Create a function name sum that accepts an array of integers as an argument
        //Declare a new variable as the running total set equal to zero
        //Create a FOR loop to cycle through each arguments passed to the sum function. Compare each argument until it reaches the length of the argument. Add it to the total
        // Return the running total variable
        // Call the sum function with even numbers
        // Call the sum function with odd numbers



// tests for mean
        // Create a function named mean that accepts an array of integers as an argument
        //Determine a new sum function FOR each integer in the argument. Add it to the total
       //Divide the running total of the argument array by the length of array to determine the mean
        // Return this mean
        // Call the mean function with even numbers
        // Call the mean function with odd numbers


// tests for median
        // Create a function median that accepts an array of integers as an argument
        //Sort the integer from least to greatest
        //Find the length of the integers
        //IF the length of the integer is odd (use Modulous)
        //Find the middle number as Math.round which is integerlength minus 1 divided by 2
        //Return the median value
        //ELSE get the two middle values
        //Calculate the average of the two values
        //Return the median value
        // Call the median function with even numbers
        // Call the median function with odd numbers

// PERSON 3:

// (Code based on only reading Person 2's User stories)


//assert test
// Create an assert function that accepts an array of integers as an agrument. If the input is an integer return true, if its not throw an error message.
function assert(arr){
    for (var i = 0; i < arr.length; i++){
        if (arr[i] % 1 === 0)
            true;
        else
            throw "there is a non-integer present";
    }
};
console.log(assert([1,2,3,4,5]))


// tests for sum
function sum(array){
    RunningTotal = 0
    for (var i = 0; i < array.length; i++){
            RunningTotal += array[i]
        }
        return RunningTotal;
    };

console.log(sum([2,4,6,8,10]))
console.log(sum([1,3,5,7,9,11]))




// tests for mean
function mean(arr){
    runningTotal = 0
    for (var i = 0; i < arr.length; i++){
            runningTotal += arr[i]
        }
        return runningTotal / (arr.length);
    };

console.log(mean([2,4,6,8,10]))
console.log(mean([1,3,5,7,9,11]))





// tests for median
function median(arr){
    var sorted = arr.sort(function(a, b){return a-b});
    var length = arr.length
    var median = Math.floor((arr.length - 1) / 2)
    if (length % 2 == 0){
        return arr[median]
    }
    else{
        return arr[median]
    }

};


console.log(median([2,4,6,8,12,14,16,18]))
console.log(median([1,3,5,7,9,11,13,15,17,19,21,23,25]))

// PERSON 5:

// (Code based on only reading Person 3/4's User stories)


//assert test
// Create an assert function that accepts an array of integers as an agrument. If the input is an integer return true, if its not throw an error message.
function assert(arr){
    for (var i in arr) {
      if (typeof arr[i] == "number") {
        return true
      }
    else {
      return new Error("there is a non-integer present")
      }
    }
}
// console.log(assert([1,2,3,4,5]))
// console.log(assert(["1", "this is a string"]))


// tests for sum
// Returns the cummulative sum of all the elements in an array
function sum(array){
    return array.reduce(function(a, b){ return a + b})
}
// console.log(sum([2,4,6,8,10]))
// console.log(sum([1,3,5,7,9,11]))




// // tests for mean
// Returns the average of value in an array
function mean(arr){
    return sum(arr) * 1.0 / arr.length
}
// console.log(mean([2,4,6,8,10]))
// console.log(mean([1,3,5,7,9,11]))
// console.log(mean([1,3,5,7,9,11,0]))





// // tests for median
// Returns the median value in an array
function median(arr) {
    var sorted = arr.sort(function(a, b){ return a-b })
    var length = arr.length
    var median = Math.floor((length - 1) / 2)
  if (length % 2 == 0) {
    return mean(sorted.splice(median, 2))
  }
  else {
    return arr[median]
  }
}


console.log(median([2,4,6,8,12,14,16,18]))
console.log(median([1,3,5,7,9,11,13,15,17,19,21,23,25]))
console.log(median([1,3,5,7,9,11,0]))





