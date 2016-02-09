// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Ayaz

// Pseudocode



// Initial Solution
// take integer and reverse it
// change to string.
// split each number an add to an array.
// look inside array & push in a comma in index i[3]
// need a counter to increment every 3 digits after
// length / 3 = how many commas.floor
// iterate through array and every 3 digits push in comma
// how_many_commas + length = how long final arry w/ commas is
// loop until new array < ^


function seperateComma(int) {

  // var int = int;
  var int = int.toString();
  var int = int.split('');
  // var new_array = int.split('');
  var int = int.reverse();

  var length = int.length;
  var commas = length / 3;
  var commas = Math.floor(commas);
  var final_length = length + commas;

  // if (length % 3 == 0){
  //      commas = commas - 1
  //   }

  // seperateComma(123456721);
  // var array_w_commas = [];
  var count = 0
  var third = 3
  while(count != commas) {
    int.splice(third,0,',');
    count ++;
    third = third + 4
  }
  // int.splice(3,0,',')
  console.log(int.reverse().join(''));

}

seperateComma(1234567);










// Refactored Solution




// Your Own Tests (OPTIONAL)




// Reflection