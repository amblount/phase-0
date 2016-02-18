// I worked on this challenge with:
// This challenge took me [#] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob",
           vicePresident: "Devin",
           secretary: "Gail",
           treasurer: "Kerry" },

  "Bob": { president: "Mary",
          vicePresident: "Hermann",
          secretary: "Fred",
          treasurer: "Ivy" },

  "Cindy": { president: "Cindy",
            vicePresident: "Hermann",
            secretary: "Bob",
            treasurer: "Bob" },

  "Devin": { president: "Louise",
            vicePresident: "John",
            secretary: "Bob",
            treasurer: "Fred" },

  "Ernest": { president: "Fred",
             vicePresident: "Hermann",
             secretary: "Fred",
             treasurer: "Ivy" },

  "Fred": { president: "Louise",
           vicePresident: "Alex",
           secretary: "Ivy",
           treasurer: "Ivy" },

  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
};

//Tally the votes in voteCount.
// var voteCount = {


//   president: {"Bob": 0,
//              "Mary": 0,
//              "Cindy": 0,
//               "Louise":0,
//               "Fred": 0,
//               "Steve": 0,
//               "Wesley": 0,
//               "Tracy":  0,
//               "Paulina": 0,
//               "Ivy": 0,},

//   vicePresident: {"Devin": 0,
//                  "Hermann": 0,
//                  "John": 0,
//                  "Alex": 0,
//                  "Kerry": 0,
//                  "Mary": 0,
//                  "Oscar": 0,
//                  "Nate": 0,
//                  "Steve": 0,
//                  "Yvonne": 0,
//                  "Zane": 0,},

//   secretary: {"Devin": 0,
//                  "Gail": 0,
//                  "Fred": 0,
//                  "Alex": 0,
//                  "Bob": 0,
//                  "Mary": 0,
//                  "Oscar": 0,
//                  "Nate": 0,
//                  "Ivy": 0,
//                  "Valorie": 0,},

//   treasurer: {"Kerry": 0,
//                  "Ivy": 0,
//                  "Bob": 0,
//                  "Fred": 0,
//                  "Gail": 0,
//                  "Tracy": 0,
//                  "Xavier": 0,
//                  "Hermann": 0,
//                  "Mary": 0,},}

// //votes[name]["president"][electee] === votecount["president"][name] --> update value
// //votes["Bob"]["President"]

// for (var name in position in votes) {
//      var name = votes[president];
//        if (voteCount.president.name == "Bob") {
//          voteCount.president.Bob += 1;
//          console.log(voteCount);
//        };
// };


// var vote = (votes.Bob.president);
// voteCount.president.vote += 1;
// console.log(voteCount.president.vote)



// // for(var category in window.books) {
// //   if(window.books.hasOwnProperty(category)) {
// //     console.log(category); // will log "Business Books" etc.
// //     for (var i = 0, j = window.books[category].length; i < j; i++) {
// //       console.log("Title: %s, Description: %s", window.books[category][i].Title, window.books[category][i].Description);
// //     }
// //   }
// // }

// // // if (condition) {
// // //     block of code to be executed if the condition is true
// // // }
// // console.log(voteCount.president.Bob);



//  /* The name of each student receiving a vote for an office should become a property
// of the respective office in voteCount.  After Alex's votes have been tallied,
// voteCount would be ...
//   var voteCount = {
//     president: { Bob: 1 },
//     vicePresident: { Devin: 1 },
//     secretary: { Gail: 1 },
//     treasurer: { Kerry: 1 }
//   }
// */


// /* Once the votes have been tallied, assign each officer position the name of the
// student who received the most votes. */
// // var officers = {
// //   president: undefined,
// //   vicePresident: undefined,
// //   secretary: undefined,
// //   treasurer: undefined
// // }

// // Pseudocode
// /*

// */

// __________________________________________
// Initial Solution

var voteCount = {


  president: {},

  vicePresident: {},

  secretary: {},

  treasurer: {}

  //function called set candidates
 for(var voter in votes) {
   // this returns the info from each voter from votes
    var individualVote = votes[voter];

    for(var position in individualVote) {
      // this is going through the info frmo each voter pres, vice, sec, treasurer... who did they vote for?
        var positionPerson = position; // president, vice, secretary
        var personVotedFor = individualVote[position];
        var positionPresident = voteCount["president"]

        voteCount.president = personVotedFor

        // need to update the objects

        if (voteCount.president[officer]) {
          voteCOunt.president[officer] += 1;
        }
        else {
          voteCount.president[officer] = 1;
        }

      if (positionPerson == "president"){
        positionPresident.push(personVotedFor += 1)
      }
   }
 }

console.log(voteCount);

};
// __________________________________________
// Refactored Solution

var voteCount = {


  president: {},

  vicePresident: {},

  secretary: {},

  treasurer: {}

};

for (var voter in vote) {
  var slate = votes[voter]
  for(var office in slate) {
    var officer = slate[office]
     if (voteCount[office][officer]) {
       voteCount[office][officer] += 1;
     }
    else {
      voteCount[office][officer] = 1;
    }
  }
}

console.log(voteCount);
// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
// I learned that you should think about the
//for .. in loops and what you are returning so that you can plan for saving that information.
// Were you able to find useful methods to help you with this?
// for .. in loops were super helpful and there are certain things that I was stuck during the initial portion of trying to figure it out.
// What concepts were solidified in the process of working through this challenge?
// I understand for .. in loops. But his challenge was such a pain, it was so hard.
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)