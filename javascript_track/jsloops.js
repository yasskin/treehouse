//structure of a while Loop

while () {
  // this is the loop
}

var counter = 1;
while ( counter <=10) {
  console.log(counter);
  counter += 1;
}

// for-in loop

var person = {
  name : 'Sarah',
  country : 'US',
  age : 35,
  treehouseStudent : true,
  skills : ['JavaScript', 'HTML', 'CSS']
};

for (var prop in person) {
  console.log(prop, ': ', person[prop]);
}

var message = '';
var student;
var search;

function print(message) {
  var outputDiv = document.getElementById('output');
  outputDiv.innerHTML = message;
}

while (true) {
    search = prompt('Search the student records: type a name (type "quit" to end)') {
      if (search === null || search.toLowerCase() === 'quit') {
          break;
      }
      for (var i = 0; i < students.length; i += 1) {
        student = students[i];
        message += '<h2>Student: ' + student.name + '</h2>';
        message += '<p>Track: ' + student.track + '</p>';
        message += '<p>Points: ' + student.points + '</p>';
        message += '<p>Achievements: ' + student.achievements + '</p>';
      }
}
