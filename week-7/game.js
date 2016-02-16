// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: create a game with 2 objects + 2 functions

// Goals:
// Characters: the specialist, resident
// Objects: specialist(name, hospital, specialty, resident, tool) resident(name, interest specialty, match, school)
// Functions: (match, fire, promote, switch)
// properties: residency and specialties
// all instances of specialty: dermatology, pediatrics, emergency medicine, internal medicine, surgery, obgyn
// this.specialty
// specialist have a method that teaches the resident
// attribute that starts at zero and then as they learn becomes that of the specialist

// Pseudocode
// Create a hospital object with hashes inside containing:
  //specialist: specialty
  //array of specialties
  //

//assign name, hospital and specialty to specialist, and name, intent and school to resident
// match the resident to the school
// print out which resident was matched where and how they felt about it.
//
//
var doctorsInfo = {"Mary": "radiology",
          "John": "cardiology",
          "Becca": "dermatology",
          "Olivia": "emergancy medicine",
          "Damien": "pediatrics",
          "Brian": "oncology",
          "Joe": "surgery",
          "Carl": "geriatrics"}

var doctors = [];

var studentsInfo = {
  "Sara": "I like emergency, fast paced",
  "Josh": "My aunt had cancer and I have done research in oncology",
  "Che": "I want to perform surgery, and I am very interested in research",
  "Andrea": "I like skin, and I want to study dermatology",
  "Laura": "I like scans the looking at radiology",
  "James": "",
  "Phil": "",
  "Bethelehem": "I need geriatrics"};

for (var student in studentsInfo) {
  var name = student;
  var intendedSpecialty = studentsInfo[student];
  var student = new Resident(name, intendedSpecialty);
  students.push(student);
};


var students = [];

for (var doctor in doctorsInfo) {
  var name = doctor;
  var specialty = doctorsInfo[doctor];
  var doctor = new Specialist(name, specialty);
  doctors.push(doctor);
}

function match(doctors, students) {
  doctors.forEach(function(doctor) {
    students.forEach(function(student) {
      if (student.specialty === doctor.specialty) {
        doctor.resident = student;
      };
    })
  });
};

function Specialist (name, specialty) {
  this.name = name; //doctors key
  // this.specialty = doctor[name] ; //doctors value
  this.specialty = specialty
  this.resident = match(specialty); // call function match using students hash
  this.hospital = "Children's Hospital and Research Center"

} //random selection form hospital array






function assignSpecialtyToResident(intendedSpecialty) {
  var specialties = ["radiology","cardiology","dermatology","emergancy medicine","pediatrics","oncology","surgery","geriatrics"];

  var interestArray = intendedSpecialty.split(" ");
  var matchedInterest;

  interestArray.forEach(function(interest) {
    specialties.forEach(function(specialty) {
      if (specialty === interest) {
        matchedInterest = interest;
      };
    });
  })

  return matchedInterest;
};

function Resident (name, intendedSpecialty) {
  this.name = name; // students key
  this.intendedSpecialty = intendedSpecialty; //use function to figure out specialty based on student value ket word
  // this.school = rand[school]; //random from school array
  this.residency = assignSpecialtyToResident(intendedSpecialty);
} //use function match

//var student = new Resident('person', 'I love oncology');


/*
function Specialist (name) {
  name: [
    specialty: "radiology",
    resident: 'john',
    hospital:
  ]
}
*/



/*
doctors.forEach(function(doctor) {
  students.forEach(function(student) {

    }
  });
});
*/



/*




var hospitals = []
var school = []






function assignSpecialtyToResident() {
 // use selectSpecialty output to assign the specialty to doctor value and resident residency
}


selectSpecialty("Sara")
*/





// // Initial Code
// function Specialist (name) {
//   this.name = name; //doctors key
//   this.specialty = doctor[name] ; //doctors value
//   this.resident = match(); // call function match using students hash
//   this.hospital: "Children's Hospital and Research Center"
// } //random selection form hospital array



// var hospitals = []
// var school = []

// function Resident (name) {
//   this.name = name; // students key
//   this.intended_specialty = selectSpecialty; //use function to figure out specialty based on student value ket word
//   this.school = rand[school]; //random from school array
//   this.residency = assignSpecialtyToResident;} //use function match


// //the key can be the name of the person and the value can be a hash of detais about the person

// var doctor = {"Mary": "radiology",
//           "John": "cardiology",
//           "Becca": "dermatology",
//           "Olivia": "emergancy medicine",
//           "Damien": "pediatrics",
//           "Brian": "oncology",
//           "Joe": "surgery",
//           "Carl": "geriatrics"}

// var students = {
//   "Sara": "I like emergencies, fast paced",
//   "Josh": "My aunt had cancer and I have done research",
//   "Che": "I want to perform surgery, and I am very interested in research",
//   "Andrea": "I like skin, and I want to study it",
//   "Laura": "I like scans the looking at picture",
//   "James": "",
//   "Phil": "",
//   "Bethelehem": ""}
// //describe the students interests and parce through the info to match, recommendation engine
// function selectSpecialty(student) {
// // use value from students hash to match keyword to interest
// // which words would point to which specialty
// // what data structure should I store that info in?
// // input: string coming from value in student hash
// // output: specialty
// // single responsibilty function
// // if able to figure out interest from string otherwise default to general practitioner

// var i;
// var interestString = students[student];
// var interestArray = interestString.split(" ");

//   do {
//     resident.intended_specialty == "radiology";
//     }
//     while (students[i] );


// }

// function match() {
// //  assign resident to specialty
// }

// function assignSpecialtyToResident() {
//  // use selectSpecialty output to assign the specialty to doctor value and resident residency
// }




// // Refactored Code






// // Reflection
// //
// //
// //
// //
// //
// //
// //
// //